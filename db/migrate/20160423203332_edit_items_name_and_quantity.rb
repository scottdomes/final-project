class EditItemsNameAndQuantity < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.rename :name, :label
      change_column :items, :quantity, :string, :default => 1
    end
  end
end
