class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :edit, :update, :destroy, :version]

  def index
    @settings = Setting.joins(:tool).order('tools.name')
    @tool = Tool.all
  end

  def test
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
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @setting.update(setting_params)
      redirect_to @setting
      flash[:success] = 'Setting was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @setting.destroy
    redirect_to settings_path
  end

  def versions
    @versions = PaperTrail::Version.order(created_at: :desc)
  end

  def version
    @version = PaperTrail::Version.find(params[:version_id])
  end

  private

  def setting_params
    params.require(:setting).permit!.except(:site_id, :created_at, :updated_at)
  end

  def set_setting
    @setting = Setting.find(params[:id])
  end
end
