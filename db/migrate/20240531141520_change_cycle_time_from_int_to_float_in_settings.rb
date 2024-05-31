class ChangeCycleTimeFromIntToFloatInSettings < ActiveRecord::Migration[7.1]
  def change
    change_column :settings, :cycle_time, :float
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
