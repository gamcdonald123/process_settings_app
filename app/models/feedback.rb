class Feedback < ApplicationRecord
  belongs_to :user
  has_many :replies, dependent: :destroy
  has_rich_text :content
end
