class ChangeEventsVoting < ActiveRecord::Migration
  def change
    change_column_default :events, :vote_on_location, false
    change_column_default :events, :vote_on_date, false
  end
end
