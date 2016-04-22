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

ActiveRecord::Schema.define(version: 20160422231137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_dates", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id"
    t.integer  "user_id"
  end

  add_index "event_dates", ["event_id"], name: "index_event_dates_on_event_id", using: :btree
  add_index "event_dates", ["user_id"], name: "index_event_dates_on_user_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.boolean  "vote_on_location", default: false
    t.boolean  "vote_on_date",     default: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "user_id"
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "name"
    t.string   "quantity",   default: "0"
    t.string   "list_type",  default: "public"
    t.integer  "user_id"
    t.integer  "event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "fb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "event_dates", "events"
  add_foreign_key "event_dates", "users"
  add_foreign_key "events", "users"
end
