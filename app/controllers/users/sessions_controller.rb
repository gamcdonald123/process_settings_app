class Users::SessionsController < Devise::SessionsController
  skip_before_action :check_authorization, only: [:new, :create]

  # POST /resource/sign_in
  def create
    super do |resource|
      if resource.roles.nil?
        return redirect_to registration_holding_path
      else
        return redirect_to after_sign_in_path_for(resource)
      end
    end
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  def after_sign_in_path_for(resource)
    if resource.roles.nil?
      registration_holding_path
    else
      determine_redirect_path
    end
  end

  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end
end
