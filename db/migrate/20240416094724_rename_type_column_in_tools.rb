class RenameTypeColumnInTools < ActiveRecord::Migration[7.1]
  def change
    rename_column :tools, :type, :tool_type
  end
end
