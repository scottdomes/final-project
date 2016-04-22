class CreateCampsiteVotes < ActiveRecord::Migration
  def change
    create_table :campsite_votes do |t|
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
