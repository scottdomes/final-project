class Event < ActiveRecord::Base
  belongs_to :user
  has_many :event_dates, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :camp_sites, dependent: :destroy
  has_many :attendance, dependent: :destroy
  has_many :users, through: :attendances

  validates :name, presence: true
  
end
