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

ActiveRecord::Schema.define(version: 20150718052259) do

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

  create_table "blockssupervisors", force: :cascade do |t|
    t.integer  "supervisor_id", limit: 4
    t.integer  "block_id",      limit: 4
    t.string   "idtecsem",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "blockssupervisors", ["block_id"], name: "index_blockssupervisors_on_block_id", using: :btree
  add_index "blockssupervisors", ["supervisor_id"], name: "index_blockssupervisors_on_supervisor_id", using: :btree

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

  create_table "districts", force: :cascade do |t|
    t.string   "detalle",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.date     "fecha_visita"
    t.integer  "company_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "instructors", ["company_id"], name: "index_instructors_on_company_id", using: :btree

  create_table "pea_avances", force: :cascade do |t|
    t.integer  "pea_id",         limit: 4
    t.string   "dominio",        limit: 255
    t.boolean  "oper_ejecutar",  limit: 1
    t.boolean  "oper_seminario", limit: 1
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "pea_avances", ["pea_id"], name: "index_pea_avances_on_pea_id", using: :btree

  create_table "peas", force: :cascade do |t|
    t.integer  "specialty_id", limit: 4
    t.string   "ciclo",        limit: 255
    t.text     "detalle",      limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "peas", ["specialty_id"], name: "index_peas_on_specialty_id", using: :btree

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

  create_table "supervisors", force: :cascade do |t|
    t.integer  "company_id",      limit: 4
    t.string   "nombrep",         limit: 255
    t.string   "nombres",         limit: 255
    t.string   "apellidopaterno", limit: 255
    t.string   "apellidomaterno", limit: 255
    t.string   "dni",             limit: 255
    t.string   "telefonos",       limit: 255
    t.string   "correopersonal",  limit: 255
    t.boolean  "eliminado",       limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "supervisors", ["company_id"], name: "index_supervisors_on_company_id", using: :btree

  add_foreign_key "blocks", "specialties"
  add_foreign_key "blockssupervisors", "blocks"
  add_foreign_key "blockssupervisors", "supervisors"
  add_foreign_key "companies", "districts"
  add_foreign_key "instructors", "companies"
  add_foreign_key "pea_avances", "peas"
  add_foreign_key "peas", "specialties"
  add_foreign_key "supervisors", "companies"
end
