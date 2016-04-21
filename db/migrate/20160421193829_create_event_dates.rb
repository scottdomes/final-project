class CreateEventDates < ActiveRecord::Migration
  def change
    create_table :event_dates do |t|
      t.date :start
      t.date :end

      t.timestamps null: false
      t.references :event, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
