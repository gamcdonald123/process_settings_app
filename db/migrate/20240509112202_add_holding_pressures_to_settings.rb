class AddHoldingPressuresToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :holding_pressure_1, :integer
    add_column :settings, :holding_pressure_time_1, :integer
    add_column :settings, :holding_pressure_speed_1, :integer
    add_column :settings, :holding_pressure_2, :integer
    add_column :settings, :holding_pressure_time_2, :integer
    add_column :settings, :holding_pressure_speed_2, :integer
    add_column :settings, :holding_pressure_3, :integer
    add_column :settings, :holding_pressure_time_3, :integer
    add_column :settings, :holding_pressure_speed_3, :integer
    add_column :settings, :holding_pressure_4, :integer
    add_column :settings, :holding_pressure_time_4, :integer
    add_column :settings, :holding_pressure_speed_4, :integer
    add_column :settings, :holding_pressure_5, :integer
    add_column :settings, :holding_pressure_time_5, :integer
    add_column :settings, :holding_pressure_speed_5, :integer
    add_column :settings, :holding_pressure_6, :integer
    add_column :settings, :holding_pressure_time_6, :integer
    add_column :settings, :holding_pressure_speed_6, :integer
  end
end
