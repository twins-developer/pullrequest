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

ActiveRecord::Schema.define(version: 20171111065301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "companies_basic_infos", force: :cascade do |t|
    t.bigint "company_id"
    t.integer "status"
    t.string "name"
    t.string "image"
    t.date "founded_on"
    t.string "address"
    t.string "tel"
    t.string "capital"
    t.string "ceo"
    t.string "responsible_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_companies_basic_infos_on_company_id"
  end

  create_table "engineers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_engineers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_engineers_on_reset_password_token", unique: true
  end

  create_table "engineers_careers", force: :cascade do |t|
    t.bigint "engineer_id"
    t.string "team_size"
    t.string "role", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engineer_id"], name: "index_engineers_careers_on_engineer_id"
  end

  create_table "engineers_desires", force: :cascade do |t|
    t.bigint "engineer_id"
    t.integer "shift", default: [], array: true
    t.integer "timing"
    t.integer "salary"
    t.integer "job_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engineer_id"], name: "index_engineers_desires_on_engineer_id"
  end

  create_table "engineers_profiles", force: :cascade do |t|
    t.bigint "engineer_id"
    t.integer "status"
    t.string "image"
    t.string "name"
    t.date "birthday"
    t.integer "gender"
    t.integer "communication"
    t.boolean "delivery"
    t.string "address"
    t.string "tel"
    t.string "portfolio"
    t.boolean "blacklist"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engineer_id"], name: "index_engineers_profiles_on_engineer_id"
  end

  create_table "frame_works", force: :cascade do |t|
    t.string "name", null: false
    t.integer "code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.integer "status", null: false
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "interview_at"
    t.string "place"
    t.integer "communication_id"
    t.integer "means"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resource_frame_works", force: :cascade do |t|
    t.bigint "frame_work_id"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["frame_work_id"], name: "index_resource_frame_works_on_frame_work_id"
  end

  create_table "resource_skills", force: :cascade do |t|
    t.bigint "skill_id"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_resource_skills_on_skill_id"
  end

  create_table "resource_tools", force: :cascade do |t|
    t.bigint "tool_id"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tool_id"], name: "index_resource_tools_on_tool_id"
  end

  create_table "scouts", force: :cascade do |t|
    t.bigint "engineer_id"
    t.bigint "company_id"
    t.date "interviewed_on"
    t.datetime "start_at"
    t.integer "status"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_scouts_on_company_id"
    t.index ["engineer_id"], name: "index_scouts_on_engineer_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name", null: false
    t.string "code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_staffs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true
  end

  create_table "tools", force: :cascade do |t|
    t.string "name", null: false
    t.string "code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "companies_basic_infos", "companies"
  add_foreign_key "engineers_careers", "engineers"
  add_foreign_key "engineers_desires", "engineers"
  add_foreign_key "engineers_profiles", "engineers"
  add_foreign_key "resource_frame_works", "frame_works"
  add_foreign_key "resource_skills", "skills"
  add_foreign_key "resource_tools", "tools"
  add_foreign_key "scouts", "companies"
  add_foreign_key "scouts", "engineers"
end
