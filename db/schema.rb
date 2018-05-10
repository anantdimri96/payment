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

ActiveRecord::Schema.define(version: 20180510111120) do

  create_table "cards", force: :cascade do |t|
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "txnid"
    t.string "email"
    t.string "phone_no", limit: 8
  end

  create_table "txn_details", force: :cascade do |t|
    t.integer "txnid"
    t.float "amount"
    t.string "name"
    t.string "email"
    t.bigint "pay_id"
    t.string "status"
    t.string "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
