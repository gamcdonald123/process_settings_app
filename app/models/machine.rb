class Machine < ApplicationRecord
  belongs_to :site
  has_many :settings

  def name_with_site
    "#{machine_name} - #{site.site_name}"
  end
end
