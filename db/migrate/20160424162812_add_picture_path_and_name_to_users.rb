class AddPicturePathAndNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :picture_path, :string
  end
end
