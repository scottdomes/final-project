class Car < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_many :rides
end
