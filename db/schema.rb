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

ActiveRecord::Schema.define(version: 20160228112355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercise_types", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "Level_id"
    t.float    "min_number"
    t.float    "max_number"
    t.boolean  "floats_allowed"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "exercise_types_operators", id: false, force: :cascade do |t|
    t.integer "exercise_type_id"
    t.integer "operator_id"
  end

  add_index "exercise_types_operators", ["exercise_type_id"], name: "index_exercise_types_operators_on_exercise_type_id", using: :btree
  add_index "exercise_types_operators", ["operator_id"], name: "index_exercise_types_operators_on_operator_id", using: :btree

  create_table "levels", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string   "title"
    t.string   "sign"
    t.boolean  "is_unary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
