class ChangeLockupPositionToFloatInSettings < ActiveRecord::Migration[7.1]
  def change
    change_column :settings, :clamp_lockup_position, :float
    change_column :settings, :cushion_position, :float
    change_column :settings, :holding_pressure_time_1, :float
    change_column :settings, :holding_pressure_time_2, :float
    change_column :settings, :holding_pressure_time_3, :float
    change_column :settings, :holding_pressure_time_4, :float
    change_column :settings, :holding_pressure_time_5, :float
    change_column :settings, :holding_pressure_time_6, :float
  end
end
