class Setting < ApplicationRecord
  belongs_to :tool
  belongs_to :machine
  belongs_to :technician
  # validates that rating is a number between 1 and 5
  validates :technicians_rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :machine_id, :cycle_time, :cooling_time, :tool_id, :technician_id, :technicians_rating, :technicians_comments, presence: true
  has_paper_trail

  after_create :debug_paper_trail_callbacks

  def debug_paper_trail_callbacks
    Rails.logger.info "PaperTrail version created: #{versions.last.inspect}"
  end

  def self.ransackable_attributes(auth_object = nil)
    ["automatic", "back_pressure", "clamp_lockup_position", "clamping_force", "closing_position_1",
    "closing_position_2", "closing_position_3", "closing_pressure", "closing_speed_1", "closing_speed_2",
    "closing_speed_3", "cooling_time", "created_at", "cushion", "cushion_position", "cycle_time",
    "decompression_after_screw", "decompression_before_screw", "drying_temp", "drying_time", "ejection_back_delay",
    "ejection_back_position_1", "ejection_back_position_2", "ejection_back_pressure_1", "ejection_back_pressure_2",
    "ejection_back_speed_1", "ejection_back_speed_2", "ejection_cycles", "ejection_forward_delay",
    "ejection_forward_position_1", "ejection_forward_position_2", "ejection_forward_pressure_1",
    "ejection_forward_pressure_2", "ejection_forward_speed_1", "ejection_forward_speed_2", "ejector_stroke",
    "fh_temp", "holding_pressure_1", "holding_pressure_2", "holding_pressure_3", "holding_pressure_4",
    "holding_pressure_5", "holding_pressure_6", "holding_pressure_speed_1", "holding_pressure_speed_2",
    "holding_pressure_speed_3", "holding_pressure_speed_4", "holding_pressure_speed_5", "holding_pressure_speed_6",
    "holding_pressure_time_1", "holding_pressure_time_2", "holding_pressure_time_3", "holding_pressure_time_4",
    "holding_pressure_time_5", "holding_pressure_time_6", "hr_zone10_temp", "hr_zone11_temp", "hr_zone12_temp",
    "hr_zone13_temp", "hr_zone14_temp", "hr_zone15_temp", "hr_zone16_temp", "hr_zone17_temp", "hr_zone18_temp",
    "hr_zone19_temp", "hr_zone1_temp", "hr_zone20_temp", "hr_zone21_temp", "hr_zone22_temp", "hr_zone23_temp",
    "hr_zone24_temp", "hr_zone2_temp", "hr_zone3_temp", "hr_zone4_temp", "hr_zone5_temp", "hr_zone6_temp",
    "hr_zone7_temp", "hr_zone8_temp", "hr_zone9_temp", "id", "id_value", "injection_position_1", "injection_position_2",
    "injection_position_3", "injection_position_4", "injection_position_5", "injection_position_6",
    "injection_pressure", "injection_pressure_1", "injection_pressure_2", "injection_pressure_3",
    "injection_pressure_4", "injection_pressure_5", "injection_pressure_6", "injection_speed_1", "injection_speed_2",
    "injection_speed_3", "injection_speed_4", "injection_speed_5", "injection_speed_6", "injection_time",
    "locking_tonnage", "machine_id", "mh_temp", "mould_safety_position", "mould_safety_pressure", "nozzle_temp",
    "opening_position_1", "opening_position_2", "opening_position_3", "opening_speed_1", "opening_speed_2",
    "opening_speed_3", "opening_stroke", "screw_rpm", "screw_speed", "screwback_time", "shot_size", "shot_weight",
    "sprue_break", "sprue_weight", "switchover_position", "technician_id", "technicians_comments",
    "technicians_rating", "tool_heater_type", "tool_id", "updated_at", "zone10_temp", "zone11_temp", "zone12_temp",
    "zone1_temp", "zone2_temp", "zone3_temp", "zone4_temp", "zone5_temp", "zone6_temp", "zone7_temp", "zone8_temp",
    "zone9_temp"]
  end
end
