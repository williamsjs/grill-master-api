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

ActiveRecord::Schema.define(version: 2018_06_01_201732) do

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_number"
  end

  create_table "instructions", force: :cascade do |t|
    t.string "name"
    t.integer "recipe_id"
    t.integer "order_number"
    t.index ["recipe_id"], name: "index_instructions_on_recipe_id"
  end

  create_table "meat_categories", force: :cascade do |t|
    t.integer "meat_type_id"
    t.integer "meat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meat_id"], name: "index_meat_categories_on_meat_id"
    t.index ["meat_type_id"], name: "index_meat_categories_on_meat_type_id"
  end

  create_table "meat_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
  end

end
