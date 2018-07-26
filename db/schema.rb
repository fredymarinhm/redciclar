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

ActiveRecord::Schema.define(version: 20180726015649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string   "description"
    t.integer  "likes_counter"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "picture"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_images_on_user_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.integer  "code"
    t.string   "description"
    t.float    "price"
    t.float    "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.float    "amount"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "recycling_stations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "telephone"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.string   "telephone"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "system_point_ins", force: :cascade do |t|
    t.datetime "date"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "system_point_outs", force: :cascade do |t|
    t.datetime "date"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "last_name"
    t.string   "document"
    t.datetime "birthdate"
    t.string   "address"
    t.string   "telephone"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "images", "users"
end
