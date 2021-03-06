# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_26_130957) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "age"
    t.bigint "house_id"
    t.string "behavior", default: "wise"
    t.bigint "list_id"
    t.index ["house_id"], name: "index_children_on_house_id"
    t.index ["list_id"], name: "index_children_on_list_id"
  end

  create_table "gift_infos", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "gifts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "open", default: false
    t.bigint "list_id"
    t.bigint "child_id"
    t.bigint "gift_info_id"
    t.index ["child_id"], name: "index_gifts_on_child_id"
    t.index ["gift_info_id"], name: "index_gifts_on_gift_info_id"
    t.index ["list_id"], name: "index_gifts_on_list_id"
  end

  create_table "houses", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.string "city"
    t.boolean "chimney", default: false
    t.float "latitude"
    t.float "longitude"
  end

  create_table "lists", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "child_id"
    t.index ["child_id"], name: "index_lists_on_child_id"
  end

  add_foreign_key "children", "houses"
  add_foreign_key "children", "lists"
  add_foreign_key "gifts", "gift_infos"
  add_foreign_key "gifts", "lists"
end
