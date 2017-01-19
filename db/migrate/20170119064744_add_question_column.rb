class AddQuestionColumn < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title, null: false

      t.timestamps null: false
    end
  end
end
