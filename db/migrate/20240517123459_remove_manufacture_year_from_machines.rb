class RemoveManufactureYearFromMachines < ActiveRecord::Migration[7.1]
  def change
    remove_column :machines, :manufacture_year
  end
end
