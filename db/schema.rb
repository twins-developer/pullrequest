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

ActiveRecord::Schema.define(version: 20170924110558) do

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
    t.string "zip_code"
    t.string "prefecture"
    t.string "city"
    t.string "street"
    t.string "building"
    t.string "tel"
    t.string "capital"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_companies_basic_infos_on_company_id"
  end

  create_table "companies_careers", force: :cascade do |t|
    t.bigint "company_id"
    t.text "summary"
    t.text "what_note"
    t.text "why_note"
    t.text "other_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_companies_careers_on_company_id"
  end

  create_table "companies_engineers", force: :cascade do |t|
    t.bigint "company_id"
    t.bigint "engineer_id"
    t.date "joined_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_companies_engineers_on_company_id"
    t.index ["engineer_id"], name: "index_companies_engineers_on_engineer_id"
  end

  create_table "confirm_documents", force: :cascade do |t|
    t.bigint "unconfirmed_address_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unconfirmed_address_id"], name: "index_confirm_documents_on_unconfirmed_address_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engineer_id"], name: "index_engineers_profiles_on_engineer_id"
  end

  create_table "engineers_settings", force: :cascade do |t|
    t.bigint "engineer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engineer_id"], name: "index_engineers_settings_on_engineer_id"
  end

  create_table "engineers_social_accounts", force: :cascade do |t|
    t.bigint "engineer_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engineer_id"], name: "index_engineers_social_accounts_on_engineer_id"
  end

  create_table "engineers_works", force: :cascade do |t|
    t.bigint "engineer_id"
    t.bigint "tag_id"
    t.string "title"
    t.string "url"
    t.string "note"
    t.index ["engineer_id"], name: "index_engineers_works_on_engineer_id"
    t.index ["tag_id"], name: "index_engineers_works_on_tag_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "company_id"
    t.date "started_on"
    t.date "ended_on"
    t.integer "status"
    t.string "title"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_projects_on_company_id"
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

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.text "note"
    t.string "image", null: false
    t.integer "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unconfirmed_addresses", force: :cascade do |t|
    t.integer "status", null: false
    t.string "resource_type"
    t.integer "resource_id"
    t.string "zip_code"
    t.string "prefecture"
    t.string "city"
    t.string "street"
    t.string "building"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "companies_basic_infos", "companies"
  add_foreign_key "companies_careers", "companies"
  add_foreign_key "companies_engineers", "companies"
  add_foreign_key "companies_engineers", "engineers"
  add_foreign_key "confirm_documents", "unconfirmed_addresses"
  add_foreign_key "engineers_profiles", "engineers"
  add_foreign_key "engineers_settings", "engineers"
  add_foreign_key "engineers_social_accounts", "engineers"
  add_foreign_key "engineers_works", "engineers"
  add_foreign_key "engineers_works", "tags"
  add_foreign_key "projects", "companies"
  add_foreign_key "scouts", "companies"
  add_foreign_key "scouts", "engineers"
end
