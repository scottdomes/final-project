class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.boolean :vote_on_location
      t.boolean :vote_on_date

      t.timestamps null: false
      t.references :user, index: true, foreign_key: true
    end
  end
end
