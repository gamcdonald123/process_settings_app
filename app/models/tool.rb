class Tool < ApplicationRecord
  has_many :settings
  include PgSearch::Model
  pg_search_scope :search, against: [:name, :tool_type], using: { tsearch: { prefix: true } }
end
