class AddScrewToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :screw_speed, :integer
    add_column :settings, :ejector_stroke, :integer
    add_column :settings, :cushion_position, :integer
  end
end
