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

  create_table "blocks", force: :cascade do |t|
    t.integer  "specialty_id",    limit: 4
    t.string   "semestre",        limit: 255
    t.string   "ciclo_academico", limit: 255
    t.string   "bloque",          limit: 255
    t.string   "dia_semana",      limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "blocks", ["specialty_id"], name: "index_blocks_on_specialty_id", using: :btree
  add_foreign_key "blocks", "specialties"
  
  create_table "companies", force: :cascade do |t|
    t.integer  "district_id",        limit: 4
    t.text     "razonsocial",        limit: 65535
    t.string   "ruc",                limit: 255
    t.string   "telefonofijo",       limit: 255
    t.string   "telefonomovil",      limit: 255
    t.string   "partidaregistral",   limit: 255
    t.string   "representantelegal", limit: 255
    t.string   "correo",             limit: 255
    t.string   "direccion",          limit: 255
    t.string   "linkgooglemaps",     limit: 255
    t.integer  "eliminado",          limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "companies", ["district_id"], name: "index_companies_on_district_id", using: :btree
  add_foreign_key "companies", "districts"

  create_table "districts", force: :cascade do |t|
    t.string   "detalle",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "detalle",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "reasons", force: :cascade do |t|
    t.string   "detalle",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "detalle",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

