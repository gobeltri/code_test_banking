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

ActiveRecord::Schema.define(version: 20160406182334) do

  create_table "accounts", force: true do |t|
    t.integer  "bank_id"
    t.string   "type"
    t.integer  "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["bank_id"], name: "index_accounts_on_bank_id"

  create_table "accounts_transfers", id: false, force: true do |t|
    t.integer "account_id"
    t.integer "transfer_id"
  end

  add_index "accounts_transfers", ["account_id"], name: "index_accounts_transfers_on_account_id"
  add_index "accounts_transfers", ["transfer_id"], name: "index_accounts_transfers_on_transfer_id"

  create_table "banks", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transfers", force: true do |t|
    t.string   "type"
    t.float    "commission"
    t.float    "limit"
    t.float    "chance_failure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
