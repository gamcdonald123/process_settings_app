class ChangeColumnNameInMachines < ActiveRecord::Migration[7.1]
  def change
    rename_column :machines, :manufactrurer, :manufacturer
  end
end
