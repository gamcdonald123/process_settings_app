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

ActiveRecord::Schema[7.1].define(version: 2024_05_20_144652) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feedbacks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
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

  create_table "settings", force: :cascade do |t|
    t.bigint "tool_id", null: false
    t.bigint "machine_id", null: false
    t.bigint "technician_id", null: false
    t.integer "shot_weight"
    t.integer "sprue_weight"
    t.integer "nozzle_temp"
    t.integer "zone1_temp"
    t.integer "zone2_temp"
    t.integer "zone3_temp"
    t.integer "zone4_temp"
    t.integer "zone5_temp"
    t.integer "zone6_temp"
    t.integer "fh_temp"
    t.integer "mh_temp"
    t.integer "hr_zone1_temp"
    t.integer "hr_zone2_temp"
    t.integer "hr_zone3_temp"
    t.integer "hr_zone4_temp"
    t.integer "hr_zone5_temp"
    t.integer "hr_zone6_temp"
    t.integer "hr_zone7_temp"
    t.integer "hr_zone8_temp"
    t.integer "hr_zone9_temp"
    t.integer "hr_zone10_temp"
    t.integer "hr_zone11_temp"
    t.integer "hr_zone12_temp"
    t.integer "shot_size"
    t.integer "switchover_position"
    t.integer "decompression_after_screw"
    t.integer "decompression_before_screw"
    t.integer "screw_rpm"
    t.integer "back_pressure"
    t.integer "sprue_break"
    t.integer "injection_pressure"
    t.integer "injection_time"
    t.integer "screwback_time"
    t.integer "cushion"
    t.integer "cooling_time"
    t.integer "cycle_time"
    t.integer "clamping_force"
    t.integer "technicians_rating"
    t.text "technicians_comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hr_zone13_temp"
    t.integer "hr_zone14_temp"
    t.integer "hr_zone15_temp"
    t.integer "hr_zone16_temp"
    t.integer "hr_zone17_temp"
    t.integer "hr_zone18_temp"
    t.integer "hr_zone19_temp"
    t.integer "hr_zone20_temp"
    t.integer "hr_zone21_temp"
    t.integer "hr_zone22_temp"
    t.integer "hr_zone23_temp"
    t.integer "hr_zone24_temp"
    t.integer "zone7_temp"
    t.integer "zone8_temp"
    t.integer "zone9_temp"
    t.integer "zone10_temp"
    t.integer "zone11_temp"
    t.integer "zone12_temp"
    t.integer "opening_speed_1"
    t.integer "opening_speed_2"
    t.integer "opening_speed_3"
    t.integer "opening_position_1"
    t.integer "opening_position_2"
    t.integer "opening_position_3"
    t.integer "opening_stroke"
    t.integer "ejection_cycles"
    t.integer "closing_speed_1"
    t.integer "closing_speed_2"
    t.integer "closing_speed_3"
    t.integer "closing_position_1"
    t.integer "closing_position_2"
    t.integer "closing_position_3"
    t.integer "closing_pressure"
    t.integer "locking_tonnage"
    t.integer "mould_safety_position"
    t.integer "mould_safety_pressure"
    t.float "clamp_lockup_position"
    t.integer "ejection_forward_speed_1"
    t.integer "ejection_forward_speed_2"
    t.integer "ejection_forward_position_1"
    t.integer "ejection_forward_position_2"
    t.integer "ejection_forward_pressure_1"
    t.integer "ejection_forward_pressure_2"
    t.integer "ejection_back_speed_1"
    t.integer "ejection_back_speed_2"
    t.integer "ejection_back_position_1"
    t.integer "ejection_back_position_2"
    t.integer "ejection_back_pressure_1"
    t.integer "ejection_back_pressure_2"
    t.integer "ejection_forward_delay"
    t.integer "ejection_back_delay"
    t.integer "injection_speed_1"
    t.integer "injection_position_1"
    t.integer "injection_pressure_1"
    t.integer "injection_speed_2"
    t.integer "injection_position_2"
    t.integer "injection_pressure_2"
    t.integer "injection_speed_3"
    t.integer "injection_position_3"
    t.integer "injection_pressure_3"
    t.integer "injection_speed_4"
    t.integer "injection_position_4"
    t.integer "injection_pressure_4"
    t.integer "injection_speed_5"
    t.integer "injection_position_5"
    t.integer "injection_pressure_5"
    t.integer "injection_speed_6"
    t.integer "injection_position_6"
    t.integer "injection_pressure_6"
    t.integer "holding_pressure_1"
    t.float "holding_pressure_time_1"
    t.integer "holding_pressure_speed_1"
    t.integer "holding_pressure_2"
    t.float "holding_pressure_time_2"
    t.integer "holding_pressure_speed_2"
    t.integer "holding_pressure_3"
    t.float "holding_pressure_time_3"
    t.integer "holding_pressure_speed_3"
    t.integer "holding_pressure_4"
    t.float "holding_pressure_time_4"
    t.integer "holding_pressure_speed_4"
    t.integer "holding_pressure_5"
    t.float "holding_pressure_time_5"
    t.integer "holding_pressure_speed_5"
    t.integer "holding_pressure_6"
    t.float "holding_pressure_time_6"
    t.integer "holding_pressure_speed_6"
    t.integer "screw_speed"
    t.integer "ejector_stroke"
    t.float "cushion_position"
    t.string "tool_heater_type"
    t.boolean "drying"
    t.integer "drying_time"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["site_id"], name: "index_users_on_site_id"
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
