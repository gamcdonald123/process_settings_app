class AddDryingTempToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :drying_temp, :integer
  end
end
