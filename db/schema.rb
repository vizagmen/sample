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

ActiveRecord::Schema.define(version: 20160128020456) do

  create_table "casts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "address1",   limit: 255
    t.string   "address2",   limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "country",    limit: 255
    t.string   "mobile",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "matrimonies", force: :cascade do |t|
    t.string   "full_name",       limit: 255
    t.string   "surname",         limit: 255
    t.string   "qualification",   limit: 255
    t.integer  "cast_id",         limit: 4
    t.string   "category",        limit: 255
    t.string   "gowtram",         limit: 255
    t.string   "income",          limit: 255
    t.string   "working_company", limit: 255
    t.string   "company_address", limit: 255
    t.string   "designation",     limit: 255
    t.string   "marriage_status", limit: 255
    t.string   "height",          limit: 255
    t.string   "weight",          limit: 255
    t.string   "hobbies",         limit: 255
    t.string   "body_skin_color", limit: 255
    t.integer  "nakshatra_id",    limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id",         limit: 4
  end

  add_index "matrimonies", ["cast_id"], name: "index_matrimonies_on_cast_id", using: :btree
  add_index "matrimonies", ["nakshatra_id"], name: "index_matrimonies_on_nakshatra_id", using: :btree
  add_index "matrimonies", ["user_id"], name: "index_matrimonies_on_user_id", using: :btree

  create_table "nakshatras", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "",    null: false
    t.string   "encrypted_password",     limit: 255,   default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.string   "name",                   limit: 255
    t.string   "avatar",                 limit: 255
    t.date     "dob"
    t.boolean  "gender"
    t.string   "phone",                  limit: 255
    t.string   "aadhar_card",            limit: 255
    t.text     "address",                limit: 65535
    t.string   "reference_no",           limit: 255
    t.string   "serial_no",              limit: 255
    t.boolean  "is_admin",                             default: false
    t.boolean  "is_paid",                              default: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.integer  "contact_id",             limit: 4
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["contact_id"], name: "index_users_on_contact_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "matrimonies", "casts"
  add_foreign_key "matrimonies", "nakshatras"
  add_foreign_key "matrimonies", "users"
  add_foreign_key "users", "contacts"
end
