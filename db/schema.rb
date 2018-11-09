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

ActiveRecord::Schema.define(version: 2018_11_07_080419) do

  create_table "microposts", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_microposts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "wares", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "phase"
    t.string "brand"
    t.string "image"
    t.text "details"
    t.string "annex"
    t.integer "quantity"
    t.string "q_unit"
    t.decimal "evaluation", precision: 2, scale: 1
    t.boolean "in_showroom"
    t.string "s_location"
    t.decimal "weight_kg", precision: 4, scale: 2
    t.integer "dim_a_cm"
    t.integer "dim_b_cm"
    t.integer "dim_h_cm"
    t.string "d_location"
    t.decimal "price", precision: 5, scale: 2
    t.decimal "down_p", precision: 4, scale: 2
    t.date "deadline"
    t.string "contract"
    t.text "bill"
    t.text "conclusion"
    t.integer "target_no"
    t.integer "ok_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
