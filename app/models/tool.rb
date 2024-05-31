class Tool < ApplicationRecord
  has_many :settings

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "maintainx_id", "name", "tool_type", "updated_at"]
  end
end
