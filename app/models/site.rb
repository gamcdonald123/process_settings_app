class Site < ApplicationRecord
  has_many :machines
  has_many :technicians
end
