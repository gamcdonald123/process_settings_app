class AddTypeToTools < ActiveRecord::Migration[7.1]
  def change
    add_column :tools, :type, :string
  end
end
