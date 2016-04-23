class EventDate < ActiveRecord::Base
  belongs_to :event
  has_many :date_votes
  
  validates :start_date, presence: true
  validates :end_date, presence: true

end
