class AddColumnstoUser < ActiveRecord::Migration
  def change
    remove_column :users, :looking_for, :string
    remove_column :users, :email, :string
    remove_column :users, :position, :string
    remove_column :users, :languages, :text
    remove_column :users, :frameworks, :text
  end
end
