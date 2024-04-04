class Machine < ApplicationRecord
  belongs_to :site
  has_many :settings
end
