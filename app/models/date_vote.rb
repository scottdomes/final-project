class DateVote < ActiveRecord::Base
  belongs_to :event_date
  belongs_to :event
end
