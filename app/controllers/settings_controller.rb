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
    sanitized_params = sanitize_params(setting_params.to_h)
    Rails.logger.info "Sanitized Setting Parameters: #{sanitized_params.inspect}"

    @setting = Setting.new(sanitized_params)

    if @setting.save
      Rails.logger.info "Setting saved successfully."
      redirect_to @setting, notice: 'Setting was successfully created.'
    else
      Rails.logger.error "Setting save failed."
      Rails.logger.error "Setting Errors: #{@setting.errors.full_messages}"
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
    params.require(:setting).permit(
      :tool_id, :machine_id, :technician_id, :shot_weight, :sprue_weight, :nozzle_temp,
      :zone1_temp, :zone2_temp, :zone3_temp, :zone4_temp, :zone5_temp, :zone6_temp,
      :fh_temp, :mh_temp, :hr_zone1_temp, :hr_zone2_temp, :hr_zone3_temp, :hr_zone4_temp,
      :hr_zone5_temp, :hr_zone6_temp, :hr_zone7_temp, :hr_zone8_temp, :hr_zone9_temp,
      :hr_zone10_temp, :hr_zone11_temp, :hr_zone12_temp, :hr_zone13_temp, :hr_zone14_temp,
      :hr_zone15_temp, :hr_zone16_temp, :hr_zone17_temp, :hr_zone18_temp, :hr_zone19_temp,
      :hr_zone20_temp, :hr_zone21_temp, :hr_zone22_temp, :hr_zone23_temp, :hr_zone24_temp,
      :shot_size, :switchover_position, :decompression_after_screw, :decompression_before_screw,
      :screw_rpm, :back_pressure, :sprue_break, :injection_pressure, :injection_time,
      :screwback_time, :cushion, :cooling_time, :cycle_time, :clamping_force, :technicians_rating,
      :technicians_comments, :opening_speed_1, :opening_speed_2, :opening_speed_3, :opening_position_1,
      :opening_position_2, :opening_position_3, :opening_stroke, :ejection_cycles, :closing_speed_1,
      :closing_speed_2, :closing_speed_3, :closing_position_1, :closing_position_2, :closing_position_3,
      :closing_pressure, :locking_tonnage, :mould_safety_position, :mould_safety_pressure,
      :clamp_lockup_position, :ejection_forward_speed_1, :ejection_forward_speed_2, :ejection_forward_position_1,
      :ejection_forward_position_2, :ejection_forward_pressure_1, :ejection_forward_pressure_2,
      :ejection_back_speed_1, :ejection_back_speed_2, :ejection_back_position_1, :ejection_back_position_2,
      :ejection_back_pressure_1, :ejection_back_pressure_2, :ejection_forward_delay, :ejection_back_delay,
      :injection_speed_1, :injection_position_1, :injection_pressure_1, :injection_speed_2, :injection_position_2,
      :injection_pressure_2, :injection_speed_3, :injection_position_3, :injection_pressure_3, :injection_speed_4,
      :injection_position_4, :injection_pressure_4, :injection_speed_5, :injection_position_5, :injection_pressure_5,
      :injection_speed_6, :injection_position_6, :injection_pressure_6, :holding_pressure_1, :holding_pressure_time_1,
      :holding_pressure_speed_1, :holding_pressure_2, :holding_pressure_time_2, :holding_pressure_speed_2,
      :holding_pressure_3, :holding_pressure_time_3, :holding_pressure_speed_3, :holding_pressure_4, :holding_pressure_time_4,
      :holding_pressure_speed_4, :holding_pressure_5, :holding_pressure_time_5, :holding_pressure_speed_5, :holding_pressure_6,
      :holding_pressure_time_6, :holding_pressure_speed_6, :screw_speed, :ejector_stroke, :cushion_position,
      :tool_heater_type, :drying_time, :drying_temp
    )
  end

  def sanitize_params(params)
    params.each do |key, value|
      if value.is_a?(Hash)
        params[key] = sanitize_params(value)
      else
        params[key] = value.blank? ? nil : value
      end
    end
    params
  end

  def set_setting
    @setting = Setting.find(params[:id])
  end
end
