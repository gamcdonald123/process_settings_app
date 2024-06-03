class Part < ApplicationRecord
  belongs_to :tool, optional: true
end
