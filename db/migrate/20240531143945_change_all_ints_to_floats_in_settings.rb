class ChangeAllIntsToFloatsInSettings < ActiveRecord::Migration[7.1]
  def up
    Setting.columns.each do |column|
      if column.type == :integer && column.name != "id" && column.name != "tool_id" && column.name != "machine_id" && column.name != "technician_id"
        change_column :settings, column.name, :float
      end
    end
  end

  def down
    Setting.columns.each do |column|
      if column.type == :float && column.name != "id" && column.name != "tool_id" && column.name != "machine_id" && column.name != "technician_id"
        change_column :settings, column.name, :integer
      end
    end
  end
end
