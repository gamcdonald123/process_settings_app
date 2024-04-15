class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :edit, :update, :destroy]

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
      # render new with unprocesseable entity
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @setting.update(setting_params)
      redirect_to @setting
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @setting.destroy
    redirect_to settings_path
  end

  private

  def setting_params
    params.require(:setting).permit!.except(:site_id, :created_at, :updated_at)
  end

  def set_setting
    @setting = Setting.find(params[:id])
  end
end
