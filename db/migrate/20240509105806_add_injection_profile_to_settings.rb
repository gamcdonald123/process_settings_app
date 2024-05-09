class AddInjectionProfileToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :injection_speed_1, :integer
    add_column :settings, :injection_position_1, :integer
    add_column :settings, :injection_pressure_1, :integer
    add_column :settings, :injection_speed_2, :integer
    add_column :settings, :injection_position_2, :integer
    add_column :settings, :injection_pressure_2, :integer
    add_column :settings, :injection_speed_3, :integer
    add_column :settings, :injection_position_3, :integer
    add_column :settings, :injection_pressure_3, :integer
    add_column :settings, :injection_speed_4, :integer
    add_column :settings, :injection_position_4, :integer
    add_column :settings, :injection_pressure_4, :integer
    add_column :settings, :injection_speed_5, :integer
    add_column :settings, :injection_position_5, :integer
    add_column :settings, :injection_pressure_5, :integer
    add_column :settings, :injection_speed_6, :integer
    add_column :settings, :injection_position_6, :integer
    add_column :settings, :injection_pressure_6, :integer
  end
end
