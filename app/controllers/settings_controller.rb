class SettingsController < ApplicationController
  before_action :set_setting, only: [:show]

  def index
    @settings = Setting.all.order(:id)
    @tool = Tool.all
  end

  def show
  end

  def new
    @setting = Setting.new
  end

  def create
    @setting = Setting.new(setting_params)

    if @setting.save
      redirect_to @setting
    else
      render :new
    end
  end

  private

  def setting_params
    params.require(:setting).permit()
  end

  def set_setting
    @setting = Setting.find(params[:id])
  end
end
