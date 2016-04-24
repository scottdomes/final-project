class AddFinalLocationAndFinalDateRangeToEvents < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.integer :final_location_id
      t.integer :final_date_id
    end
  end
end
