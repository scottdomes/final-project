class CampSite < ActiveRecord::Base
  belongs_to :event

  validate :name, presence: true
end
