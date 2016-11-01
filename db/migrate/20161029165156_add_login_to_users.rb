class AddLoginToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :bio, :text
    add_column :users, :location, :string
  end
end
