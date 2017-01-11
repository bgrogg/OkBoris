class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :location, null: false
      t.text :summary
      t.string :looking_for
      t.string :languages
      t.integer :profile_pic_id
      t.string :image_file_name

      t.timestamps null: false
    end
  end
end
