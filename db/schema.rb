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

ActiveRecord::Schema.define(version: 201906211205533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "exhibits", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "meta_title"
    t.string   "meta_description"
    t.date     "date"
    t.string   "cover"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "cover"
    t.string   "images",           default: [], array: true
    t.string   "desktop"
    t.string   "mobile",           default: [], array: true
    t.string   "meta_title"
    t.string   "meta_description"
    t.text     "summary"
    t.string   "site_link"
    t.string   "repo_link"
    t.text     "description",      default: [], array: true
    t.string   "features",         default: [], array: true
    t.string   "apis",             default: [], array: true
    t.string   "tech_stack",       default: [], array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "header"
    t.string   "image"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["post_id"], name: "index_sections_on_post_id", using: :btree

end
