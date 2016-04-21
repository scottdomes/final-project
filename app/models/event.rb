class Event < ActiveRecord::Base
  belongs_to :user
  has_many :event_dates, dependent: :destroy

  validates :name, presence: true
end
