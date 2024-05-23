require 'yaml'

class VersionsController < ApplicationController
  before_action :set_setting, only: [:index, :show]
  before_action :set_version, only: [:show]

  def index
    @versions = @setting.versions.order(created_at: :asc)
  end

  def show
    # Logging version details for debugging
    Rails.logger.info "Version ID: #{@version.id}"
    Rails.logger.info "Version Event: #{@version.event}"
    Rails.logger.info "Version Object: #{@version.object.inspect}"

    # Check if the current version is a create event and has a nil object
    if @version.event == 'create' && @version.object.nil?
      @version_hash = OpenStruct.new(@setting.attributes)
    else
      yaml_string = @version.object

      if yaml_string.nil?
        flash[:alert] = "Version data not available."
        redirect_to setting_versions_path(setting_id: @setting.id) and return
      end

      # OpenStruct allows us to access the hash values as methods
      begin
        @version_hash = OpenStruct.new(YAML.safe_load(yaml_string, permitted_classes: [Date, Time, ActiveSupport::TimeWithZone, ActiveSupport::TimeZone],
          aliases: true
        ))
      rescue => e
        Rails.logger.error "Failed to load YAML: #{e.message}"
        flash[:alert] = "Failed to load version data."
        redirect_to setting_versions_path(setting_id: @setting.id) and return
      end
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
