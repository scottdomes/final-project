class EventDate < ActiveRecord::Base
  belongs_to :event

  validates :start_date, presence: true
  validates :end_date, presence: true

end
