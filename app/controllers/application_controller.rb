class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.has_role?(:admin) || resource.has_role?(:technician) || resource.has_role?(:setter)
      root_path
    else
      registration_holding_path
    end
  end
end
