class AddSemiToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :automatic, :string
  end
end
