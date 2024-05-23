class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :check_authorization

  def after_sign_in_path_for(resource)
    if resource.roles.nil?
      registration_holding_path
    else
      determine_redirect_path
    end
  end

  private

  def check_authorization
    return if current_user.nil?

    unless current_user.has_role?(:admin) || current_user.has_role?(:technician) || current_user.has_role?(:setter)
      if !(controller_name == 'pages' && action_name == 'registration_holding')
        redirect_to registration_holding_path, alert: "Please request access from the administrator."
      end
    end
  end

  def determine_redirect_path
    if current_user.has_role?(:admin) || current_user.has_role?(:technician) || current_user.has_role?(:setter)
      root_path
    else
      registration_holding_path
    end
  end
end
