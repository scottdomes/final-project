class AddColumnsToItems < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.string :name
      t.integer :quantity
      t.string :list_type
      t.belongs_to :user
      t.belongs_to :event
    end
  end
end

