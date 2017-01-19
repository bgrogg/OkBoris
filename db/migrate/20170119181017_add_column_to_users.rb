class AddColumnToUsers < ActiveRecord::Migration
  def change
    change_column_null :users, :gender, false
    change_column_null :users, :orientation, false
    change_column_null :users, :age, false
  end
end
