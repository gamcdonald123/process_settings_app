class CreateMachines < ActiveRecord::Migration[7.1]
  def change
    create_table :machines do |t|
      t.string :manufactrurer
      t.integer :tonnage
      t.references :site, null: false, foreign_key: true
      t.date :manufacture_year
      t.string :maintainx_id
      t.string :type

      t.timestamps
    end
  end
end
