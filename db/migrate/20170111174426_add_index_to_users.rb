class AddIndexToUsers < ActiveRecord::Migration
  def change
    add_column :users, :frameworks, :string
    add_index :users,  :username, unique: true
    add_index :users,  :email, unique: true
    add_index :users,  :session_token, unique: true
    add_index :users, :languages
    add_index :users, :frameworks
    add_index :users, :location
  end
end
