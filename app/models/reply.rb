class Reply < ApplicationRecord
  belongs_to :feedback
  belongs_to :user
  has_rich_text :content
end
