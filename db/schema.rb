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

ActiveRecord::Schema.define(version: 20150903202124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "properties", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "sqft"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.integer  "property_id"
    t.string   "unit_number"
    t.integer  "sqft"
    t.string   "name"
    t.string   "owner"
    t.string   "phone"
    t.string   "email"
    t.string   "b_type"
    t.string   "lease_length"
    t.date     "start"
    t.date     "end"
    t.integer  "rent"
    t.integer  "cam"
    t.string   "increase_type"
    t.string   "increase_amount"
    t.string   "renewal_options"
    t.integer  "security_deposit"
    t.integer  "first_last"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end