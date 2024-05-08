class Reply < ApplicationRecord
  belongs_to :feedback
  belongs_to :user
end
