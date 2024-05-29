class Setting < ApplicationRecord
  belongs_to :tool
  belongs_to :machine
  belongs_to :technician
  # validates that rating is a number between 1 and 5
  validates :technicians_rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :machine_id, :cycle_time, :cooling_time, :tool_id, presence: true
  has_paper_trail on: [:create, :update], if: proc { |t| PaperTrail.request.enabled? }

  after_create :debug_paper_trail_callbacks
  before_save :sanitize_object_changes

  def debug_paper_trail_callbacks
    Rails.logger.info "PaperTrail version created: #{versions.last.inspect}"
  end

  private

  def sanitize_object_changes
    versions = self.versions
    versions.each do |version|
      version.object_changes = version.object_changes.to_json if version.object_changes.present?
    end
  end
end
