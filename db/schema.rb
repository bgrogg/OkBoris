# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170119182911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.integer  "question_id", null: false
    t.text     "body",        null: false
    t.integer  "order",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "choices", ["question_id"], name: "index_choices_on_question_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.text     "title",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responses", force: :cascade do |t|
    t.integer  "choice_id",                       null: false
    t.integer  "user_id",                         null: false
    t.string   "acceptable_choices", default: [], null: false, array: true
    t.integer  "importance"
    t.text     "explanation"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "responses", ["choice_id"], name: "index_responses_on_choice_id", using: :btree
  add_index "responses", ["user_id"], name: "index_responses_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.string   "location",        null: false
    t.text     "summary"
    t.integer  "profile_pic_id"
    t.string   "image_file_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "gender",          null: false
    t.string   "orientation",     null: false
    t.string   "age",             null: false
    t.text     "life"
    t.text     "skills"
    t.text     "favorites"
    t.text     "thinking"
    t.text     "friday"
    t.text     "msg_if"
  end

  add_index "users", ["location"], name: "index_users_on_location", using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
