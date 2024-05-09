class AddOpeningSpeedsAndPositionsToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :opening_speed_1, :integer
    add_column :settings, :opening_speed_2, :integer
    add_column :settings, :opening_speed_3, :integer
    add_column :settings, :opening_position_1, :integer
    add_column :settings, :opening_position_2, :integer
    add_column :settings, :opening_position_3, :integer
    add_column :settings, :opening_stroke, :integer
    add_column :settings, :ejection_cycles, :integer
    add_column :settings, :closing_speed_1, :integer
    add_column :settings, :closing_speed_2, :integer
    add_column :settings, :closing_speed_3, :integer
    add_column :settings, :closing_position_1, :integer
    add_column :settings, :closing_position_2, :integer
    add_column :settings, :closing_position_3, :integer
    add_column :settings, :closing_pressure, :integer
    add_column :settings, :locking_tonnage, :integer
    add_column :settings, :mould_safety_position, :integer
    add_column :settings, :mould_safety_pressure, :integer
    add_column :settings, :clamp_lockup_position, :integer
  end
end
