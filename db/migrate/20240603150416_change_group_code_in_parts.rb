class ChangeGroupCodeInParts < ActiveRecord::Migration[7.1]
  def change
    change_column :parts, :group_code, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
