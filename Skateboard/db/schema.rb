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

ActiveRecord::Schema.define(version: 2019_03_06_001353) do

  create_table "bodies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "world_id"
    t.integer "spirit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spirit_id"], name: "index_bodies_on_spirit_id"
    t.index ["world_id"], name: "index_bodies_on_world_id"
  end

  create_table "citizens", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "phrase"
    t.integer "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_citizens_on_world_id"
  end

  create_table "cores", force: :cascade do |t|
    t.integer "deity_id"
    t.integer "body_id"
    t.string "essence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["body_id"], name: "index_cores_on_body_id"
    t.index ["deity_id"], name: "index_cores_on_deity_id"
  end

  create_table "deities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "phrase"
    t.integer "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "defeated"
    t.string "riddle"
    t.string "answer"
    t.index ["world_id"], name: "index_deities_on_world_id"
  end

  create_table "spirits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "worlds", force: :cascade do |t|
    t.string "setting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "url"
  end

end
