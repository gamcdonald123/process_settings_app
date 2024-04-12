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
      puts @setting.errors.full_messages
      render :new
    end
  end

  private

  def setting_params
    params.require(:setting).permit!.except(:site_id, :created_at, :updated_at)
  end

  def set_setting
    @setting = Setting.find(params[:id])
  end
end
