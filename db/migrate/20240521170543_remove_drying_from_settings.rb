class RemoveDryingFromSettings < ActiveRecord::Migration[7.1]
  def change
    remove_column :settings, :drying
  end
end
