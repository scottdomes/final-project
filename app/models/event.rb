class Event < ActiveRecord::Base
  belongs_to :user
  has_many :event_dates, dependent: :destroy

  validates :name, presence: true
  validates :vote_on_location, presence: true
  validates :vote_on_date, presence: true
end
