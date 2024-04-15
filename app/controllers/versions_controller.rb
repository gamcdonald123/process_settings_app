class VersionsController < ApplicationController
  def index
    @setting = Setting.find(params[:setting_id])
    @versions = @setting.versions
  end
end
