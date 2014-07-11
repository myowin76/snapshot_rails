# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140711092952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audits", force: true do |t|
    t.date     "audit_date"
    t.integer  "store_id"
    t.integer  "user_id"
    t.integer  "photos_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "audits", ["store_id"], name: "index_audits_on_store_id", using: :btree
  add_index "audits", ["user_id"], name: "index_audits_on_user_id", using: :btree

  create_table "brand_owners", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands", force: true do |t|
    t.string   "name"
    t.integer  "brand_owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brands", ["brand_owner_id"], name: "index_brands_on_brand_owner_id", using: :btree

  create_table "channels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "environment_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.integer  "audit_id"
    t.string   "headline"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "photos", ["audit_id"], name: "index_photos_on_audit_id", using: :btree

  create_table "retailers", force: true do |t|
    t.string   "name"
    t.integer  "sector_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "retailers", ["sector_id"], name: "index_retailers_on_sector_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id"], name: "index_roles_users_on_role_id", using: :btree
  add_index "roles_users", ["user_id"], name: "index_roles_users_on_user_id", using: :btree

  create_table "saved_searches", force: true do |t|
    t.string   "name"
    t.text     "value"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "saved_searches", ["user_id"], name: "index_saved_searches_on_user_id", using: :btree

  create_table "sectors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", force: true do |t|
    t.string   "name"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_formats", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "address2"
    t.string   "address3"
    t.string   "town"
    t.string   "postcode"
    t.integer  "store_format_id"
    t.integer  "retailer_id"
    t.integer  "country_id"
    t.integer  "environment_type_id"
    t.integer  "channel_id"
    t.decimal  "longitude",           precision: 15, scale: 10
    t.decimal  "latitude",            precision: 15, scale: 10
    t.integer  "photos_count"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stores", ["channel_id"], name: "index_stores_on_channel_id", using: :btree
  add_index "stores", ["country_id"], name: "index_stores_on_country_id", using: :btree
  add_index "stores", ["environment_type_id"], name: "index_stores_on_environment_type_id", using: :btree
  add_index "stores", ["retailer_id"], name: "index_stores_on_retailer_id", using: :btree
  add_index "stores", ["store_format_id"], name: "index_stores_on_store_format_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.boolean  "active"
    t.boolean  "deleted"
    t.integer  "deleted_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

end
