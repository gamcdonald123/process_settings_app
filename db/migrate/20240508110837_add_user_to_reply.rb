class AddUserToReply < ActiveRecord::Migration[7.1]
  def change
    add_reference :replies, :user, null: false, foreign_key: true
  end
end
