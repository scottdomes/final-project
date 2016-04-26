class User < ActiveRecord::Base
  has_many :events, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :events, through: :attendances
  has_many :cars
  belongs_to :passenger, polymorphic: :true
end
