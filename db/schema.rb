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

ActiveRecord::Schema.define(version: 20150801220932) do

  create_table "app_user_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "app_users", force: :cascade do |t|
    t.string   "login",            limit: 255
    t.string   "password",         limit: 255
    t.string   "name",             limit: 255
    t.string   "last_name",        limit: 255
    t.integer  "app_user_type_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "app_users", ["app_user_type_id"], name: "index_app_users_on_app_user_type_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "company_name", limit: 255
    t.string   "ruc",          limit: 255
    t.string   "address",      limit: 255
    t.string   "phones",       limit: 255
    t.string   "latitude",     limit: 255
    t.string   "longitude",    limit: 255
    t.integer  "district_id",  limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "companies", ["district_id"], name: "index_companies_on_district_id", using: :btree

  create_table "districts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "last_name",    limit: 255
    t.integer  "specialty_id", limit: 4
    t.integer  "company_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "students", ["company_id"], name: "index_students_on_company_id", using: :btree
  add_index "students", ["specialty_id"], name: "index_students_on_specialty_id", using: :btree

  create_table "supervisors", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "last_name",   limit: 255
    t.integer  "app_user_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "supervisors", ["app_user_id"], name: "index_supervisors_on_app_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visit_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "visits", force: :cascade do |t|
    t.datetime "visit_date"
    t.integer  "estimated_time",  limit: 4
    t.text     "motive",          limit: 65535
    t.text     "comments",        limit: 65535
    t.integer  "company_id",      limit: 4
    t.integer  "supervisor_id",   limit: 4
    t.integer  "visit_status_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "visits", ["company_id"], name: "index_visits_on_company_id", using: :btree
  add_index "visits", ["supervisor_id"], name: "index_visits_on_supervisor_id", using: :btree
  add_index "visits", ["visit_status_id"], name: "index_visits_on_visit_status_id", using: :btree

  add_foreign_key "app_users", "app_user_types"
  add_foreign_key "companies", "districts"
  add_foreign_key "students", "companies"
  add_foreign_key "students", "specialties"
  add_foreign_key "supervisors", "app_users"
  add_foreign_key "visits", "companies"
  add_foreign_key "visits", "supervisors"
  add_foreign_key "visits", "visit_statuses"
end
