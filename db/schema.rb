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

ActiveRecord::Schema.define(version: 2020_03_07_024315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.text "information"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
    t.boolean "pets"
    t.boolean "tatami"
    t.integer "age"
    t.integer "floor"
    t.integer "size"
    t.string "location"
    t.integer "deposit"
    t.string "layout"
    t.integer "distance_to_supermarket"
    t.integer "distance_to_park"
    t.integer "distance_to_station"
    t.integer "key_money"
    t.float "latitude"
    t.float "longitude"
    t.text "address"
    t.boolean "bar_nearby"
    t.boolean "cafe_nearby"
    t.integer "initial_cost"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "property_viewings", force: :cascade do |t|
    t.string "status"
    t.string "time_slot", array: true
    t.datetime "confirmed_time"
    t.bigint "user_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reservation_status"
    t.index ["property_id"], name: "index_property_viewings_on_property_id"
    t.index ["user_id"], name: "index_property_viewings_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "pets"
    t.boolean "tatami"
    t.integer "age"
    t.boolean "wants_supermarket_nearby"
    t.boolean "wants_park_nearby"
    t.boolean "wants_station_nearby"
    t.boolean "wants_first_floor"
    t.string "desired_location"
    t.string "work_location"
    t.string "layout"
    t.integer "min_price"
    t.integer "max_price"
    t.jsonb "availability"
    t.string "registration_card_number"
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "address"
    t.date "start_date"
    t.string "phone_number"
    t.integer "salary"
    t.string "employer_name"
    t.string "partylocation"
    t.integer "size_desired"
    t.boolean "key_money"
    t.boolean "wants_bar_nearby"
    t.boolean "wants_cafe_nearby"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "properties", "users"
  add_foreign_key "property_viewings", "properties"
  add_foreign_key "property_viewings", "users"
end
