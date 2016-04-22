class RenameDateColumnsInEventdate < ActiveRecord::Migration
  def change
    change_table :event_dates do |t|
      t.rename :start, :start_date
      t.rename :end, :end_date
    end
  end
end
