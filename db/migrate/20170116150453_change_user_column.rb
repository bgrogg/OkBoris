class ChangeUserColumn < ActiveRecord::Migration
  def change
    remove_column :users, :frameworks
    remove_column :users, :languages
    add_column :users, :languages, :text
    add_column :users, :frameworks, :text
  end
end
