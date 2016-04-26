class AddEventToRide < ActiveRecord::Migration
  def change
    change_table :rides do |t|
      t.belongs_to :event
    end
  end
end
