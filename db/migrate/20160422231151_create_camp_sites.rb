class CreateCampSites < ActiveRecord::Migration
  def change
    create_table :camp_sites do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
