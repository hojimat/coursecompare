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

ActiveRecord::Schema.define(version: 20170730110728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.integer "std"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "term"
    t.string "country"
    t.bigint "school_id"
    t.bigint "dept_id"
    t.index ["dept_id"], name: "index_courses_on_dept_id"
    t.index ["school_id"], name: "index_courses_on_school_id"
  end

  create_table "depts", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "school_id"
    t.index ["school_id"], name: "index_depts_on_school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "country"
  end

  create_table "scrapers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses", "depts"
  add_foreign_key "courses", "schools"
  add_foreign_key "depts", "schools"
end
