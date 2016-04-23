class CreateDateVotes < ActiveRecord::Migration
  def change
    create_table :date_votes do |t|
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
