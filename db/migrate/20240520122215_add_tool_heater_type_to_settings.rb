class AddToolHeaterTypeToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :tool_heater_type, :string
  end
end
