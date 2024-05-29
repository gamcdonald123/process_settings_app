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

    @version_hash = OpenStruct.new(YAML.load(@version.object, permitted_classes: [Date, Time, ActiveSupport::TimeWithZone, ActiveSupport::TimeZone], aliases: true))
    @changes = OpenStruct.new(YAML.load(@version.object_changes, permitted_classes: [Date, Time, ActiveSupport::TimeWithZone, ActiveSupport::TimeZone], aliases: true))

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
