require 'yaml'

class VersionsController < ApplicationController
  before_action :set_setting, only: [:index, :show]
  before_action :set_version, only: [:show]

  def index
    @versions = @setting.versions.order(created_at: :asc)
  end

  def show
    Rails.logger.info "Version ID: #{@version.id}"
    Rails.logger.info "Version Event: #{@version.event}"
    Rails.logger.info "Version Object: #{@version.object.inspect}"
    Rails.logger.info "Version Object Changes: #{@version.object_changes.inspect}"

    if @version.event == 'create' && @version.object.nil?
      changes = @version.object_changes
      attributes = changes.transform_values { |v| v.is_a?(Array) ? v.last : v }
    else
      attributes = @version.object
    end

    if attributes.nil?
      flash[:alert] = "Version data not available."
      redirect_to setting_versions_path(setting_id: @setting.id) and return
    end

    begin
      @version_hash = OpenStruct.new(attributes)
    rescue => e
      Rails.logger.error "Failed to process attributes: #{e.message}"
      flash[:alert] = "Failed to load version data."
      redirect_to setting_versions_path(setting_id: @setting.id) and return
    end

    @version_index = @setting.versions.order(created_at: :asc).pluck(:id).index(@version.id) + 1
  end

  private

  def set_setting
    @setting = Setting.find(params[:setting_id])
  end

  def set_version
    @version = PaperTrail::Version.find(params[:id])
  end
end
