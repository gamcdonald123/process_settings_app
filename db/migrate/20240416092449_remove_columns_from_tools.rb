class RemoveColumnsFromTools < ActiveRecord::Migration[7.1]
  def change
    remove_column :tools, :customer
    remove_column :tools, :part_nos
  end
end
