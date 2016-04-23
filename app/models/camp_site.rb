class CampSite < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :campsite_votes

  validates :name, presence: true
end
