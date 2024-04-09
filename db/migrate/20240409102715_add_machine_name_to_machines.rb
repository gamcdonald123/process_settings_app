class AddMachineNameToMachines < ActiveRecord::Migration[7.1]
  def change
    add_column :machines, :machine_name, :string
  end
end
