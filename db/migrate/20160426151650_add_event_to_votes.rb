class AddEventToVotes < ActiveRecord::Migration
  def change
    change_table :campsite_votes do |t|
      t.belongs_to :event
    end

    change_table :date_votes do |t|
      t.belongs_to :event
    end
  end
end
