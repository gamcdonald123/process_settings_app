class AddEjectionToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :ejection_forward_speed_1, :integer
    add_column :settings, :ejection_forward_speed_2, :integer
    add_column :settings, :ejection_forward_position_1, :integer
    add_column :settings, :ejection_forward_position_2, :integer
    add_column :settings, :ejection_forward_pressure_1, :integer
    add_column :settings, :ejection_forward_pressure_2, :integer
    add_column :settings, :ejection_back_speed_1, :integer
    add_column :settings, :ejection_back_speed_2, :integer
    add_column :settings, :ejection_back_position_1, :integer
    add_column :settings, :ejection_back_position_2, :integer
    add_column :settings, :ejection_back_pressure_1, :integer
    add_column :settings, :ejection_back_pressure_2, :integer
  end
end
