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

ActiveRecord::Schema.define(version: 20160523160618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "main_courses", force: :cascade do |t|
    t.text     "description"
    t.boolean  "isActive"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "meals_id"
  end

  add_index "main_courses", ["meals_id"], name: "index_main_courses_on_meals_id", using: :btree

  create_table "meal_types", force: :cascade do |t|
    t.text     "description"
    t.boolean  "isActive"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "meals_id"
  end

  add_index "meal_types", ["meals_id"], name: "index_meal_types_on_meals_id", using: :btree

  create_table "meals", force: :cascade do |t|
    t.integer  "mealTypeId"
    t.integer  "userId"
    t.integer  "mainCourseId"
    t.integer  "sideId"
    t.boolean  "isPublic"
    t.boolean  "isActive"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "sides", force: :cascade do |t|
    t.text     "description"
    t.boolean  "isActive"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "meals_id"
  end

  add_index "sides", ["meals_id"], name: "index_sides_on_meals_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "meals_id"
  end

  add_index "users", ["meals_id"], name: "index_users_on_meals_id", using: :btree

end
