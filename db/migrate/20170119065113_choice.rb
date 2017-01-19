class Choice < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :question_id, null: false
      t.text :body, null: false
      t.integer :order, null: false

      t.timestamps null: false
    end
  end
end
