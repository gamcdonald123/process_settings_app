class AddStatusToFeedbacks < ActiveRecord::Migration[7.1]
  def change
    add_column :feedbacks, :status, :string
  end
end
