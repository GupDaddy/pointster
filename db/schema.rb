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

ActiveRecord::Schema.define(version: 2019_11_07_013436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "par_hole_1"
    t.integer "par_hole_2"
    t.integer "par_hole_3"
    t.integer "par_hole_4"
    t.integer "par_hole_5"
    t.integer "par_hole_6"
    t.integer "par_hole_7"
    t.integer "par_hole_8"
    t.integer "par_hole_9"
    t.integer "par_hole_10"
    t.integer "par_hole_11"
    t.integer "par_hole_12"
    t.integer "par_hole_13"
    t.integer "par_hole_14"
    t.integer "par_hole_15"
    t.integer "par_hole_16"
    t.integer "par_hole_17"
    t.integer "par_hole_18"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "course"
    t.date "date"
    t.string "player"
    t.string "email"
    t.integer "team"
    t.integer "hole_1_points"
    t.integer "hole_2_points"
    t.integer "hole_3_points"
    t.integer "hole_4_points"
    t.integer "hole_5_points"
    t.integer "hole_6_points"
    t.integer "hole_7_points"
    t.integer "hole_8_points"
    t.integer "hole_9_points"
    t.integer "hole_10_points"
    t.integer "hole_11_points"
    t.integer "hole_12_points"
    t.integer "hole_13_points"
    t.integer "hole_14_points"
    t.integer "hole_15_points"
    t.integer "hole_16_points"
    t.integer "hole_17_points"
    t.integer "hole_18_points"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "tour"
    t.string "name"
    t.string "email"
    t.integer "start_point_quota"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
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
