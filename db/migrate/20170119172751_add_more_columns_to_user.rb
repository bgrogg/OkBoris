class AddMoreColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :orientation, :string
    add_column :users, :age, :string
    add_column :users, :life, :text
    add_column :users, :skills, :text
    add_column :users, :favorites, :text
    add_column :users, :thinking, :text
    add_column :users, :friday, :text
    add_column :users, :message, :text
  end
end
