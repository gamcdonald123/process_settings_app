class AddDigitalSystemsHandlerToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :digital_systems_handler, :string
  end
end
