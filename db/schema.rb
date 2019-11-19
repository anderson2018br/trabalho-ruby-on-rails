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

ActiveRecord::Schema.define(version: 2019_11_19_123005) do

  create_table "genus", force: :cascade do |t|
    t.string "name"
    t.integer "sub_family_id", null: false
    t.integer "species_count"
    t.boolean "is_published"
    t.date "first_discovered_at"
    t.text "fun_fact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub_family_id"], name: "index_genus_on_sub_family_id"
  end

  create_table "genus_notes", force: :cascade do |t|
    t.integer "genus_id", null: false
    t.string "user_avatar_filename"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genus_id"], name: "index_genus_notes_on_genus_id"
  end

  create_table "sub_families", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "genus", "sub_families"
  add_foreign_key "genus_notes", "genus", column: "genus_id"
end
