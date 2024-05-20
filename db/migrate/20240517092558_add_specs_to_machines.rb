class AddSpecsToMachines < ActiveRecord::Migration[7.1]
  def change
    add_column :machines, :injection_unit, :integer
    add_column :machines, :screw_diameter, :integer
    add_column :machines, :max_injection_volume, :integer
    add_column :machines, :max_opening_stroke, :integer
    add_column :machines, :min_mould_height, :integer
    add_column :machines, :max_mould_height, :integer
    add_column :machines, :sequential_control, :boolean
    add_column :machines, :platen_width, :integer
    add_column :machines, :platen_height, :integer
    add_column :machines, :tie_bar_width, :integer
    add_column :machines, :tie_bar_height, :integer
    add_column :machines, :ejector_stroke, :integer
    add_column :machines, :location_ring_size, :integer
    add_column :machines, :max_power, :integer
    add_column :machines, :air_valves, :integer
    add_column :machines, :hydraulic_valves, :integer
  end
end
