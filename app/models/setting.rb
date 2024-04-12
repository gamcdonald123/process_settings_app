class Setting < ApplicationRecord
  belongs_to :tool
  belongs_to :machine
  belongs_to :technician
  # validates that rating is a number between 1 and 5
  validates :technicians_rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :machine_id, :cycle_time, :cooling_time, :tool_id, presence: true
end
