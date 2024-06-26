# frozen_string_literal: true
require 'net/http'
require 'uri'

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    params[:user][:first_name] = params[:user][:first_name].capitalize if params[:user][:first_name]
    params[:user][:last_name] = params[:user][:last_name].capitalize if params[:user][:last_name]
    super

    # send slack notification
    webhook = ENV["ZAPIER_REGISTRATION_WEBHOOK"]
    Rails.logger.info "Zapier webhook: #{webhook}"

    if webhook.present?
      begin
        uri = URI.parse(webhook)
        Rails.logger.info "Parsed URI: #{uri}"

        Net::HTTP.post_form(uri, email: resource.email, id: resource.id, digital_systems_handler: resource.digital_systems_handler)
      rescue URI::InvalidURIError => e
        Rails.logger.error "Invalid URI: #{webhook}, error: #{e.message}"
      rescue StandardError => e
        Rails.logger.error "Failed to trigger Zapier webhook: #{e.message}"
      end
    else
      Rails.logger.error "Zapier webhook URL is not set."
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :site_id, :digital_systems_handler])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    registration_holding_path
  end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
