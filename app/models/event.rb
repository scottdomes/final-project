class Event < ActiveRecord::Base
  belongs_to :user
  has_many :event_dates, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :camp_sites, dependent: :destroy

  validates :name, presence: true
  
end
