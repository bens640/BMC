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

ActiveRecord::Schema.define(version: 20150911174136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "payments", force: :cascade do |t|
    t.integer  "tenant_id"
    t.date     "date"
    t.integer  "amount"
    t.boolean  "paid_in_full"
    t.integer  "amount_under"
    t.string   "p_type"
    t.string   "rent_month"
    t.string   "check_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

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
    t.date     "commencement"
    t.string   "payment_method"
    t.string   "late_payment"
    t.integer  "rent"
    t.integer  "cam"
    t.integer  "increase_type"
    t.integer  "increase_amount"
    t.integer  "security_deposit"
    t.integer  "first"
    t.integer  "last"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "admin"
    t.boolean  "owner"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
