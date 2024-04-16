class AddMxidToTools < ActiveRecord::Migration[7.1]
  def change
    add_column :tools, :maintainx_id, :integer
  end
end
