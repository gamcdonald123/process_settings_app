class CreateParts < ActiveRecord::Migration[7.1]
  def change
    create_table :parts do |t|
      t.string :part_number
      t.string :description
      t.integer :mrp_id
      t.references :tool, null: false, foreign_key: true
      t.integer :group_code
      t.string :group_title

      t.timestamps
    end
  end
end
