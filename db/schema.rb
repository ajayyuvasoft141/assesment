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

ActiveRecord::Schema.define(version: 2021_01_09_072923) do

  create_table "adboards", force: :cascade do |t|
    t.string "name"
    t.string "total_revenue"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "adds", force: :cascade do |t|
    t.integer "ads_category_id"
    t.integer "ads_size_id"
    t.integer "adboard_id"
    t.string "name"
    t.integer "ads_duration"
    t.boolean "active", default: true
    t.integer "charge"
    t.datetime "start_add"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adboard_id"], name: "index_adds_on_adboard_id"
    t.index ["ads_category_id"], name: "index_adds_on_ads_category_id"
    t.index ["ads_size_id"], name: "index_adds_on_ads_size_id"
  end

  create_table "ads_categories", force: :cascade do |t|
    t.string "ads_type"
    t.integer "ads_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ads_sizes", force: :cascade do |t|
    t.string "ads_size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
