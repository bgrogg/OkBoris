class AddIndextoChoices < ActiveRecord::Migration
  def change
    add_index :choices, :question_id
    add_index :responses, :choice_id
    add_index :responses, :user_id
  end
end
