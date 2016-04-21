class User < ActiveRecord::Base
  validates :fb_id, uniqueness: true
end
