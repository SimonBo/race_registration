ActiveRecord::Schema.define(version: 20180907030053) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", id: :serial, force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_id", null: false
    t.string "resource_type", null: false
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "registrations", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "phone_number"
    t.string "email"
    t.string "address"
    t.string "team_1_name"
    t.integer "team_1_age"
    t.string "team_2_name"
    t.integer "team_2_age"
    t.string "team_3_name"
    t.integer "team_3_age"
    t.string "team_4_name"
    t.integer "team_4_age"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "team_name"
    t.string "team_5_name"
    t.string "team_6_name"
    t.string "team_7_name"
    t.integer "team_5_age"
    t.integer "team_6_age"
    t.integer "team_7_age"
  end
end
