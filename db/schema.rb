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

ActiveRecord::Schema.define(version: 2019_08_20_224918) do

  create_table "riders", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "rider_name"
    t.string "email"
    t.string "bike_name"
    t.string "icon_file_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "touring_routes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "touring_name"
    t.text "touring_desc"
    t.datetime "start_date"
    t.datetime "end_date"
    t.float "start_lat", limit: 53
    t.float "start_lon", limit: 53
    t.float "end_lat", limit: 53
    t.float "end_lon", limit: 53
    t.float "wp1_lat", limit: 53
    t.float "wp1_lon", limit: 53
    t.float "wp2_lat", limit: 53
    t.float "wp2_lon", limit: 53
    t.float "wp3_lat", limit: 53
    t.float "wp3_lon", limit: 53
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "rider_id"
    t.index ["rider_id"], name: "index_touring_routes_on_rider_id"
  end

  add_foreign_key "touring_routes", "riders"
end
