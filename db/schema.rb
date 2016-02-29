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

ActiveRecord::Schema.define(version: 20160229192717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "sports",      default: false, null: false
  end

  create_table "competitions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.text     "text"
    t.string   "avatar"
  end

  add_index "competitions", ["category_id"], name: "index_competitions_on_category_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "venue_id"
    t.integer  "category_id"
    t.integer  "competition_id"
    t.boolean  "sports",         default: false, null: false
    t.boolean  "priority",       default: false, null: false
  end

  add_index "events", ["category_id"], name: "index_events_on_category_id", using: :btree
  add_index "events", ["competition_id"], name: "index_events_on_competition_id", using: :btree
  add_index "events", ["venue_id"], name: "index_events_on_venue_id", using: :btree

  create_table "events_players", id: false, force: :cascade do |t|
    t.integer "event_id",  null: false
    t.integer "player_id", null: false
  end

  add_index "events_players", ["event_id", "player_id"], name: "index_events_players_on_event_id_and_player_id", using: :btree
  add_index "events_players", ["player_id", "event_id"], name: "index_events_players_on_player_id_and_event_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.text     "text"
    t.string   "avatar"
  end

  add_index "players", ["category_id"], name: "index_players_on_category_id", using: :btree

  create_table "tickets", force: :cascade do |t|
    t.float    "price"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "quantity"
    t.integer  "event_id"
  end

  add_index "tickets", ["event_id"], name: "index_tickets_on_event_id", using: :btree

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "avatar"
  end

  add_foreign_key "competitions", "categories"
  add_foreign_key "events", "categories"
  add_foreign_key "events", "competitions"
  add_foreign_key "events", "venues"
  add_foreign_key "players", "categories"
  add_foreign_key "tickets", "events"
end
