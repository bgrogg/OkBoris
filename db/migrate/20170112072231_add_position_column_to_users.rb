class AddPositionColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :position, :string, null: false
    add_index :users, :position
  end
end
