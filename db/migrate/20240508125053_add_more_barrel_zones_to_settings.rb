class AddMoreBarrelZonesToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :zone7_temp, :integer
    add_column :settings, :zone8_temp, :integer
    add_column :settings, :zone9_temp, :integer
    add_column :settings, :zone10_temp, :integer
    add_column :settings, :zone11_temp, :integer
    add_column :settings, :zone12_temp, :integer
  end
end
