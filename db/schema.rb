# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_17_190218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_details", force: :cascade do |t|
    t.bigint "booking_id"
    t.bigint "seating_id"
    t.float "unit_price"
    t.datetime "created_at", precision: 6, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["booking_id", "seating_id"], name: "booking_seat_id", unique: true
    t.index ["booking_id"], name: "index_booking_details_on_booking_id"
    t.index ["seating_id"], name: "index_booking_details_on_seating_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "screening_id"
    t.boolean "status", default: false
    t.float "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["screening_id"], name: "index_bookings_on_screening_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.string "cast"
    t.integer "duration", default: 0
    t.datetime "first_screen_date"
    t.datetime "last_screen_date"
    t.boolean "is_active", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["title"], name: "index_movies_on_title", unique: true
  end

  create_table "screenings", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "screen_id"
    t.date "show_day", default: "2021-03-17"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "show_time_id"
    t.index ["movie_id", "screen_id", "show_time_id", "show_day"], name: "movie_screening_show_time", unique: true
    t.index ["movie_id"], name: "index_screenings_on_movie_id"
    t.index ["screen_id"], name: "index_screenings_on_screen_id"
    t.index ["show_time_id"], name: "index_screenings_on_show_time_id"
  end

  create_table "screens", force: :cascade do |t|
    t.string "name", null: false
    t.integer "capacity", default: 0
    t.boolean "status", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seatings", force: :cascade do |t|
    t.bigint "screen_id"
    t.string "section"
    t.integer "number", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "tariff_type_id"
    t.index ["screen_id"], name: "index_seatings_on_screen_id"
    t.index ["tariff_type_id"], name: "index_seatings_on_tariff_type_id"
  end

  create_table "show_times", force: :cascade do |t|
    t.integer "start_time"
    t.integer "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["start_time", "end_time"], name: "show_start_end_time", unique: true
  end

  create_table "tariff_types", force: :cascade do |t|
    t.string "position", null: false
    t.float "price", null: false
    t.float "tax_percentage", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

end
