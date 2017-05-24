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

ActiveRecord::Schema.define(version: 20170420210937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "full_name1"
    t.string   "first_name1"
    t.string   "last_name1"
    t.string   "full_name2"
    t.string   "first_name2"
    t.string   "last_name2"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email1"
    t.string   "email2"
    t.text     "about"
    t.text     "history"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employee_service_calls", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "service_call_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "full_name"
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "phone"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imports", force: :cascade do |t|
    t.string "name"
    t.string "model"
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "sku"
    t.string   "name"
    t.string   "mfg"
    t.string   "part_type"
    t.string   "model"
    t.string   "size"
    t.string   "color"
    t.string   "category"
    t.string   "sub_category"
    t.integer  "qty"
    t.integer  "location"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pools", force: :cascade do |t|
    t.integer  "customer_id"
    t.boolean  "our_pool"
    t.date     "our_install_date"
    t.string   "pool_type"
    t.string   "pool_mfg"
    t.string   "pool_model"
    t.string   "pool_finish"
    t.string   "pool_size"
    t.string   "filter_type"
    t.string   "filter_mfg"
    t.string   "filter_model"
    t.string   "pump_type"
    t.string   "pump_mfg"
    t.string   "pump_model"
    t.string   "heater_type"
    t.string   "heater_mfg"
    t.string   "heater_model"
    t.string   "winter_cover_type"
    t.text     "service_history"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "service_calls", force: :cascade do |t|
    t.date     "scheduled_service_call_date"
    t.datetime "start_time_est"
    t.datetime "start_time_act"
    t.datetime "end_time_est"
    t.datetime "end_time_act"
    t.integer  "customer_id"
    t.integer  "work_order_id"
    t.integer  "truck_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "truck_service_calls", force: :cascade do |t|
    t.integer  "truck_id"
    t.integer  "service_call_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.string   "name"
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.text     "equipment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_orders", force: :cascade do |t|
    t.date     "scheduled_service_call_date"
    t.text     "customer_complaint"
    t.integer  "customer_id"
    t.integer  "pool_id"
    t.text     "inventory_req"
    t.string   "work_order_type"
    t.integer  "duration_est"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
