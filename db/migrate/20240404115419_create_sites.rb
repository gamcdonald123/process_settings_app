class CreateSites < ActiveRecord::Migration[7.1]
  def change
    create_table :sites do |t|
      t.string :site_name

      t.timestamps
    end
  end
end
