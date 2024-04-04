class Setting < ApplicationRecord
  belongs_to :tool
  belongs_to :machine
  belongs_to :technician
end
