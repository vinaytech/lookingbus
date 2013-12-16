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

ActiveRecord::Schema.define(version: 20131208160545) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.decimal  "price",                      precision: 5, scale: 0
    t.integer  "vehicle_number_allowed",                             default: 0
    t.integer  "institution_number_allowed",                         default: 0
    t.integer  "user_number_allowed",                                default: 0
    t.string   "account_type",                                       default: "Free"
    t.boolean  "status",                                             default: true
    t.boolean  "android_active",                                     default: true
    t.boolean  "apple_active",                                       default: true
    t.boolean  "blackberry_active",                                  default: true
    t.boolean  "web_active",                                         default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "device_stops", force: true do |t|
    t.integer  "device_id"
    t.string   "stop_name"
    t.string   "stop_lan"
    t.string   "stop_lat"
    t.datetime "stop_time"
    t.string   "stop_key"
    t.integer  "number_of_passanger"
    t.boolean  "status",              default: true
    t.boolean  "active",              default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", force: true do |t|
    t.integer  "user_id"
    t.string   "device_number"
    t.string   "device_key"
    t.string   "device_pin"
    t.integer  "institution_id"
    t.integer  "vehicle_id"
    t.integer  "vehicle_type_id"
    t.boolean  "status",          default: true
    t.boolean  "blocked",         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institution_app_pages", force: true do |t|
    t.integer  "institution_app_id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institution_app_pages_sections", force: true do |t|
    t.integer  "institution_app_pages_id"
    t.string   "head_name"
    t.text     "body_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institution_apps", force: true do |t|
    t.integer  "institution_id"
    t.string   "name"
    t.boolean  "splash_screen_image",    default: true
    t.string   "splash_screen_url"
    t.text     "splash_screen_text"
    t.string   "splash_screen_slogans"
    t.text     "google_url"
    t.text     "apple_url"
    t.text     "blackberry_url"
    t.text     "google_instruction"
    t.text     "apple_instruction"
    t.text     "blackberry_instruction"
    t.boolean  "app_logo",               default: true
    t.string   "app_logo_text"
    t.boolean  "app_logo_url"
    t.boolean  "android_active",         default: true
    t.boolean  "apple_active",           default: true
    t.boolean  "blackberry_active",      default: true
    t.boolean  "web_active",             default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutions", force: true do |t|
    t.string   "name"
    t.integer  "number_of_vehicle",            default: 0
    t.string   "institution_key"
    t.integer  "number_of_institution_branch", default: 1
    t.boolean  "status",                       default: true
    t.integer  "account_type_id"
    t.boolean  "institutions_cms",             default: true
    t.boolean  "institutions_vehicle",         default: true
    t.boolean  "institutions_web",             default: true
    t.boolean  "institutions_android",         default: true
    t.boolean  "institutions_apple",           default: true
    t.boolean  "institutions_blackberry",      default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutions_branches", force: true do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.integer  "institution_id"
    t.string   "land_mark"
    t.boolean  "status",         default: true
    t.boolean  "main_branch",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", force: true do |t|
    t.integer  "institution_id"
    t.integer  "institution_app_id"
    t.string   "head"
    t.text     "description"
    t.boolean  "status"
    t.boolean  "active"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer  "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "role_id"
    t.string   "phone_number"
    t.string   "mobile_number"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.integer  "institution_id"
    t.string   "created_by"
    t.string   "created_through"
    t.boolean  "status",          default: true
    t.boolean  "blocked",         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: true do |t|
    t.integer  "user_id"
    t.string   "vehicle_number"
    t.string   "vehicle_key"
    t.integer  "institution_id"
    t.integer  "device_id"
    t.integer  "vehicle_type_id"
    t.boolean  "status",          default: true
    t.boolean  "blocked",         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
