require 'yaml'

class VersionsController < ApplicationController
  before_action :set_setting, only: [:index, :show]
  before_action :set_version, only: [:show]


  def index
    @versions = @setting.versions
  end

  def show
    yaml_string = @version.object
    @version_hash = YAML.safe_load(yaml_string, permitted_classes: [Date, Time, ActiveSupport::TimeWithZone, ActiveSupport::TimeZone],
    aliases: true
    )
  end

  private

  def set_setting
    @setting = Setting.find(params[:setting_id])
  end

  def set_version
    @version = PaperTrail::Version.find(params[:id])
  end
end
