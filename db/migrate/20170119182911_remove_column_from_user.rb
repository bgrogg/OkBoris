class RemoveColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :message, :text
    add_column :users, :msg_if, :text
  end
end
