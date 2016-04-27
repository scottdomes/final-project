class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :car
  belongs_to :event
end
