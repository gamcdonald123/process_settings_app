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
      @site_id = @setting.tool.site_id
      @version = PaperTrail::Version.where(item_id: @setting.id).last
      if @version.event == 'create'
        @version.object = @setting.attributes.to_yaml
      end
      @version.save
      redirect_to @setting, notice: 'Setting was successfully created.'
    else
      flash[:alert] = "Failed to create setting: #{@setting.errors.full_messages}"
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
    redirect_to settings_path, notice: 'Setting was successfully deleted.'
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
