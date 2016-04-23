class ChangeDateColsToStringEventdates < ActiveRecord::Migration
  def change
    change_column :event_dates, :start_date, :string
    change_column :event_dates, :end_date, :string
  end
end
