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

ActiveRecord::Schema.define(version: 2019_06_14_134324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apisearches", force: :cascade do |t|
    t.string "city_departure"
    t.decimal "price"
    t.datetime "departure_date"
    t.datetime "return_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city_arrival"
    t.time "duration"
    t.index ["user_id"], name: "index_apisearches_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "last_name"
    t.string "email"
    t.text "subject"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.string "city_departure"
    t.string "destination"
    t.decimal "price"
    t.string "departure_date"
    t.string "return_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "back_city_departure"
    t.string "back_destination"
    t.string "back_departure_date"
    t.string "back_return_date"
    t.string "back_duration"
    t.string "duration"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.string "stripe_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city_departure"
    t.string "destination"
    t.decimal "price"
    t.datetime "departure_date"
    t.datetime "arrival_date"
    t.string "duration"
    t.string "back_citydeparture"
    t.string "back_destination"
    t.datetime "back_departuredate"
    t.datetime "back_arrivaldate"
    t.string "back_duration"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "description"
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
