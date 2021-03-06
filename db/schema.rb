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

ActiveRecord::Schema.define(version: 2019_04_23_071334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "glossaries", force: :cascade do |t|
    t.text "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "urlname"
    t.integer "user_id"
  end

  create_table "glossaries_nodes", id: false, force: :cascade do |t|
    t.integer "glossary_id"
    t.integer "node_id"
  end

  create_table "glossaries_tags", id: false, force: :cascade do |t|
    t.integer "glossary_id"
    t.integer "tag_id"
  end

  create_table "image_blocks", force: :cascade do |t|
    t.text "image"
    t.text "subhead"
    t.integer "glossary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nodes", force: :cascade do |t|
    t.text "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_nodes_on_ancestry"
  end

  create_table "tags", force: :cascade do |t|
    t.text "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "text_blocks", force: :cascade do |t|
    t.text "header"
    t.text "info"
    t.integer "glossary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "username"
    t.text "password_digest"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.text "urlname"
  end

end
