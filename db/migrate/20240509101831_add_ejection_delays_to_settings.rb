class AddEjectionDelaysToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :ejection_forward_delay, :integer
    add_column :settings, :ejection_back_delay, :integer
  end
end
