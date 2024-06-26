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

ActiveRecord::Schema[7.1].define(version: 2024_05_25_130922) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "core_accounts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "company_name"
    t.string "legal_name"
    t.string "email"
    t.string "phone"
    t.string "fax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "core_website_domains", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "core_website_id", null: false
    t.string "domain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["core_website_id"], name: "index_core_website_domains_on_core_website_id"
  end

  create_table "core_websites", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "core_account_id", null: false
    t.string "description"
    t.string "title"
    t.string "keywords"
    t.string "enquiry_phone"
    t.string "enquiry_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["core_account_id"], name: "index_core_websites_on_core_account_id"
  end

  add_foreign_key "core_website_domains", "core_websites"
  add_foreign_key "core_websites", "core_accounts"
end
