class RenameToolNameColumnInTools < ActiveRecord::Migration[7.1]
  def change
    rename_column :tools, :tool_name, :name
  end
end
