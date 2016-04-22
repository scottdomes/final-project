class Event < ActiveRecord::Base
  belongs_to :user
  has_many :event_dates, dependent: :destroy
  has_many :items, dependent: :destroy

  validates :name, presence: true
end
