class Machine < ApplicationRecord
  belongs_to :site
  has_many :settings

  def name_with_site
    "#{machine_name} - #{site.site_name}"
  end

  def self.ransackable_associations(auth_object = nil)
    ["machine_id", "site_id"]
  end
end
