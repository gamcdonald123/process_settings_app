class ChangeColumnTypesInVersions < ActiveRecord::Migration[7.1]
  def change
    change_column :versions, :object, :jsonb, using: 'object::jsonb'
    change_column :versions, :object_changes, :jsonb, using: 'object_changes::jsonb'
  end
end
