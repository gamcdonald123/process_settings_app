class SettingsController < ApplicationController

  def index
    @settings = Setting.all
    @tool = Tool.all
  end

  def show
  end

  private

  def setting_params
    params.require(:setting).permit()
  end

  def set_setting
    @setting = Setting.find(params[:id])
  end
end
