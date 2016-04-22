class AddItemsDefaults < ActiveRecord::Migration
  def change
    change_column :items, :quantity, :string, :default => 0
    change_column :items, :user_id, :integer, :null => true
    change_column :items, :list_type, :string, :default => 'public'
  end
end
