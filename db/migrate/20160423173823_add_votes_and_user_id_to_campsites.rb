class AddVotesAndUserIdToCampsites < ActiveRecord::Migration
  def change
    change_table :campsite_votes do |t|
      t.belongs_to :camp_site
    end

    change_table :camp_sites do |t|
      t.belongs_to :user
    end

    change_table :date_votes do |t|
      t.belongs_to :event_date
    end
  end
end
