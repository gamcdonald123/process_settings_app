class ChangeToolIdInParts < ActiveRecord::Migration[7.1]
  def change
    change_column_null :parts, :tool_id, true
  end
end
