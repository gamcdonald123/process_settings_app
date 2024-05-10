class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_paper_trail_whodunnit

  def home
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :site_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :site_id])
  end

  def user_for_paper_trail
    current_user.try(:id)
  end
end
