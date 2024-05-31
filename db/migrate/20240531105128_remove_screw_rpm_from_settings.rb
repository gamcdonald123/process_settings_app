class RemoveScrewRpmFromSettings < ActiveRecord::Migration[7.1]
  def change
    remove_column :settings, :screw_rpm
  end
end
