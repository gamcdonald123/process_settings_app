class AddDryingToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :drying, :boolean
    add_column :settings, :drying_time, :integer
  end
end
