class CreateTools < ActiveRecord::Migration[7.1]
  def change
    create_table :tools do |t|
      t.string :tool_name
      t.string :customer
      t.string :part_nos

      t.timestamps
    end
  end
end
