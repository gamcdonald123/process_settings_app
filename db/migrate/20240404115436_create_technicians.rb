class CreateTechnicians < ActiveRecord::Migration[7.1]
  def change
    create_table :technicians do |t|
      t.string :first_name
      t.string :last_name
      t.references :site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
