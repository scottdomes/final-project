class CampsiteVote < ActiveRecord::Base
  belongs_to :camp_site
  belongs_to :event
end
