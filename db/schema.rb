# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_31_143945) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "feedbacks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.string "comment"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "machines", force: :cascade do |t|
    t.string "manufacturer"
    t.integer "tonnage"
    t.bigint "site_id", null: false
    t.string "maintainx_id"
    t.string "machine_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "machine_name"
    t.integer "injection_unit"
    t.integer "screw_diameter"
    t.integer "max_injection_volume"
    t.integer "max_opening_stroke"
    t.integer "min_mould_height"
    t.integer "max_mould_height"
    t.boolean "sequential_control"
    t.integer "platen_width"
    t.integer "platen_height"
    t.integer "tie_bar_width"
    t.integer "tie_bar_height"
    t.integer "ejector_stroke"
    t.integer "location_ring_size"
    t.integer "max_power"
    t.integer "air_valves"
    t.integer "hydraulic_valves"
    t.integer "year_of_manufacture"
    t.index ["site_id"], name: "index_machines_on_site_id"
  end

  create_table "replies", force: :cascade do |t|
    t.text "content"
    t.bigint "feedback_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["feedback_id"], name: "index_replies_on_feedback_id"
    t.index ["user_id"], name: "index_replies_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end

  create_table "settings", force: :cascade do |t|
    t.bigint "tool_id", null: false
    t.bigint "machine_id", null: false
    t.bigint "technician_id", null: false
    t.float "shot_weight"
    t.float "sprue_weight"
    t.float "nozzle_temp"
    t.float "zone1_temp"
    t.float "zone2_temp"
    t.float "zone3_temp"
    t.float "zone4_temp"
    t.float "zone5_temp"
    t.float "zone6_temp"
    t.float "fh_temp"
    t.float "mh_temp"
    t.float "hr_zone1_temp"
    t.float "hr_zone2_temp"
    t.float "hr_zone3_temp"
    t.float "hr_zone4_temp"
    t.float "hr_zone5_temp"
    t.float "hr_zone6_temp"
    t.float "hr_zone7_temp"
    t.float "hr_zone8_temp"
    t.float "hr_zone9_temp"
    t.float "hr_zone10_temp"
    t.float "hr_zone11_temp"
    t.float "hr_zone12_temp"
    t.float "shot_size"
    t.float "switchover_position"
    t.float "decompression_after_screw"
    t.float "decompression_before_screw"
    t.float "back_pressure"
    t.float "sprue_break"
    t.float "injection_pressure"
    t.float "injection_time"
    t.float "screwback_time"
    t.float "cushion"
    t.float "cooling_time"
    t.float "cycle_time"
    t.float "clamping_force"
    t.float "technicians_rating"
    t.text "technicians_comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "hr_zone13_temp"
    t.float "hr_zone14_temp"
    t.float "hr_zone15_temp"
    t.float "hr_zone16_temp"
    t.float "hr_zone17_temp"
    t.float "hr_zone18_temp"
    t.float "hr_zone19_temp"
    t.float "hr_zone20_temp"
    t.float "hr_zone21_temp"
    t.float "hr_zone22_temp"
    t.float "hr_zone23_temp"
    t.float "hr_zone24_temp"
    t.float "zone7_temp"
    t.float "zone8_temp"
    t.float "zone9_temp"
    t.float "zone10_temp"
    t.float "zone11_temp"
    t.float "zone12_temp"
    t.float "opening_speed_1"
    t.float "opening_speed_2"
    t.float "opening_speed_3"
    t.float "opening_position_1"
    t.float "opening_position_2"
    t.float "opening_position_3"
    t.float "opening_stroke"
    t.float "ejection_cycles"
    t.float "closing_speed_1"
    t.float "closing_speed_2"
    t.float "closing_speed_3"
    t.float "closing_position_1"
    t.float "closing_position_2"
    t.float "closing_position_3"
    t.float "closing_pressure"
    t.float "locking_tonnage"
    t.float "mould_safety_position"
    t.float "mould_safety_pressure"
    t.float "clamp_lockup_position"
    t.float "ejection_forward_speed_1"
    t.float "ejection_forward_speed_2"
    t.float "ejection_forward_position_1"
    t.float "ejection_forward_position_2"
    t.float "ejection_forward_pressure_1"
    t.float "ejection_forward_pressure_2"
    t.float "ejection_back_speed_1"
    t.float "ejection_back_speed_2"
    t.float "ejection_back_position_1"
    t.float "ejection_back_position_2"
    t.float "ejection_back_pressure_1"
    t.float "ejection_back_pressure_2"
    t.float "ejection_forward_delay"
    t.float "ejection_back_delay"
    t.float "injection_speed_1"
    t.float "injection_position_1"
    t.float "injection_pressure_1"
    t.float "injection_speed_2"
    t.float "injection_position_2"
    t.float "injection_pressure_2"
    t.float "injection_speed_3"
    t.float "injection_position_3"
    t.float "injection_pressure_3"
    t.float "injection_speed_4"
    t.float "injection_position_4"
    t.float "injection_pressure_4"
    t.float "injection_speed_5"
    t.float "injection_position_5"
    t.float "injection_pressure_5"
    t.float "injection_speed_6"
    t.float "injection_position_6"
    t.float "injection_pressure_6"
    t.float "holding_pressure_1"
    t.float "holding_pressure_time_1"
    t.float "holding_pressure_speed_1"
    t.float "holding_pressure_2"
    t.float "holding_pressure_time_2"
    t.float "holding_pressure_speed_2"
    t.float "holding_pressure_3"
    t.float "holding_pressure_time_3"
    t.float "holding_pressure_speed_3"
    t.float "holding_pressure_4"
    t.float "holding_pressure_time_4"
    t.float "holding_pressure_speed_4"
    t.float "holding_pressure_5"
    t.float "holding_pressure_time_5"
    t.float "holding_pressure_speed_5"
    t.float "holding_pressure_6"
    t.float "holding_pressure_time_6"
    t.float "holding_pressure_speed_6"
    t.float "screw_speed"
    t.float "ejector_stroke"
    t.float "cushion_position"
    t.string "tool_heater_type"
    t.float "drying_time"
    t.float "drying_temp"
    t.string "automatic"
    t.index ["machine_id"], name: "index_settings_on_machine_id"
    t.index ["technician_id"], name: "index_settings_on_technician_id"
    t.index ["tool_id"], name: "index_settings_on_tool_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "site_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technicians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "site_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_technicians_on_site_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "maintainx_id"
    t.string "tool_type"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.bigint "site_id"
    t.string "digital_systems_handler"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["site_id"], name: "index_users_on_site_id"
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "versions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "item_type", null: false
    t.string "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.text "object_changes"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "machines", "sites"
  add_foreign_key "replies", "feedbacks"
  add_foreign_key "replies", "users"
  add_foreign_key "settings", "machines"
  add_foreign_key "settings", "technicians"
  add_foreign_key "settings", "tools"
  add_foreign_key "technicians", "sites"
  add_foreign_key "users", "sites"
end
