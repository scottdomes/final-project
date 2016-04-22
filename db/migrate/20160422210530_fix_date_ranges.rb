class FixDateRanges < ActiveRecord::Migration
  def change
    remove_column :event_dates, :end, :date
    remove_column :event_dates, :start, :date
    add_column :event_dates, :end_date, :date
    add_column :event_dates, :start_date, :date
  end
end
