class ChangeTypeColumnNameInMachines < ActiveRecord::Migration[7.1]
  def change
    rename_column :machines, :type, :machine_type
  end
end
