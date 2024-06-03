class AddSiteToPart < ActiveRecord::Migration[7.1]
  def change
    add_reference :parts, :site, null: false, foreign_key: true
  end
end
