class User < ActiveRecord::Base
  has_many :events, dependent: :destroy
  has_many :items, dependent: :destroy
end
