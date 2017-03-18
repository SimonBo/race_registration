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

ActiveRecord::Schema.define(version: 20160914055218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "registrations", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "phone_number"
    t.string   "email"
    t.string   "address"
    t.string   "team_1_name"
    t.integer  "team_1_age"
    t.string   "team_2_name"
    t.integer  "team_2_age"
    t.string   "team_3_name"
    t.integer  "team_3_age"
    t.string   "team_4_name"
    t.integer  "team_4_age"
    t.string   "token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "team_name"
  end

end
