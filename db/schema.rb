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

ActiveRecord::Schema.define(version: 20180125134357) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "items", force: :cascade do |t|
    t.integer "item_id", null: false
    t.string "chat_link", null: false
    t.string "name", null: false
    t.string "icon", null: false
    t.string "description"
    t.string "item_type", null: false
    t.string "rarity", null: false
    t.integer "level", null: false
    t.integer "vendor_value", null: false
    t.integer "default_skin"
    t.text "flags", default: [], array: true
    t.text "game_types", default: [], array: true
    t.text "restrictions", default: [], array: true
    t.jsonb "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
