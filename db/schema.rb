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

ActiveRecord::Schema.define(version: 20140529025131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "subtitle"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles_test_sessions", id: false, force: true do |t|
    t.string   "article_id"
    t.string   "test_session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clicks", force: true do |t|
    t.string   "click_type"
    t.string   "section_id"
    t.string   "test_session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "click_value"
    t.datetime "date_time"
  end

  create_table "images", force: true do |t|
    t.string   "section_id"
    t.string   "article_id"
    t.text     "caption"
    t.text     "url"
    t.text     "alt"
    t.text     "attribution"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.string   "article_id"
    t.text     "short"
    t.text     "medium"
    t.text     "long"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  create_table "test_sessions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
