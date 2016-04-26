class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.belongs_to :event
      t.belongs_to :user
      t.integer :passenger_capacity
      
      t.timestamps null: false
    end
  end
end
