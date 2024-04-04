class CreateSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :settings do |t|
      t.references :tool, null: false, foreign_key: true
      t.references :machine, null: false, foreign_key: true
      t.references :technician, null: false, foreign_key: true
      t.integer :shot_weight
      t.integer :sprue_weight
      t.integer :nozzle_temp
      t.integer :zone1_temp
      t.integer :zone2_temp
      t.integer :zone3_temp
      t.integer :zone4_temp
      t.integer :zone5_temp
      t.integer :zone6_temp
      t.integer :fh_temp
      t.integer :mh_temp
      t.integer :hr_zone1_temp
      t.integer :hr_zone2_temp
      t.integer :hr_zone3_temp
      t.integer :hr_zone4_temp
      t.integer :hr_zone5_temp
      t.integer :hr_zone6_temp
      t.integer :hr_zone7_temp
      t.integer :hr_zone8_temp
      t.integer :hr_zone9_temp
      t.integer :hr_zone10_temp
      t.integer :hr_zone11_temp
      t.integer :hr_zone12_temp
      t.integer :shot_size
      t.integer :switchover_position
      t.integer :decompression_after_screw
      t.integer :decompression_before_screw
      t.integer :screw_rpm
      t.integer :back_pressure
      t.integer :sprue_break
      t.integer :injection_pressure
      t.integer :injection_time
      t.integer :screwback_time
      t.integer :cushion
      t.integer :cooling_time
      t.integer :cycle_time
      t.integer :clamping_force
      t.integer :technicians_rating
      t.text :technicians_comments

      t.timestamps
    end
  end
end
