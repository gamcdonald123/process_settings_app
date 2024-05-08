class AddMoreZonesToHotRunnerInSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :hr_zone13_temp, :integer
    add_column :settings, :hr_zone14_temp, :integer
    add_column :settings, :hr_zone15_temp, :integer
    add_column :settings, :hr_zone16_temp, :integer
    add_column :settings, :hr_zone17_temp, :integer
    add_column :settings, :hr_zone18_temp, :integer
    add_column :settings, :hr_zone19_temp, :integer
    add_column :settings, :hr_zone20_temp, :integer
    add_column :settings, :hr_zone21_temp, :integer
    add_column :settings, :hr_zone22_temp, :integer
    add_column :settings, :hr_zone23_temp, :integer
    add_column :settings, :hr_zone24_temp, :integer
  end
end
