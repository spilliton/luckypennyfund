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

ActiveRecord::Schema.define(version: 20140601174441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recipients", force: true do |t|
    t.string   "first_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
    t.string   "last_name"
    t.text     "description"
  end

  create_table "recipients_users", id: false, force: true do |t|
    t.integer "user_id",      null: false
    t.integer "recipient_id", null: false
  end

  add_index "recipients_users", ["recipient_id"], name: "index_recipients_users_on_recipient_id", using: :btree
  add_index "recipients_users", ["user_id"], name: "index_recipients_users_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "email"
    t.boolean  "organization"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "address1"
    t.string   "address2"
    t.string   "locality"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "gender"
    t.boolean  "admin",                  default: false
    t.boolean  "superuser",              default: false
    t.date     "dob"
    t.string   "last_name"
  end

  add_index "users", ["admin"], name: "index_users_on_admin", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
