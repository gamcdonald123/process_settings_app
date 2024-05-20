class ChangeManufactureYearInMachines < ActiveRecord::Migration[7.1]
  def change
    add_column :machines, :year_of_manufacture, :integer
  end
end
