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

ActiveRecord::Schema.define(version: 20180822192820) do

  create_table "asks", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.text     "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cafe_comments", force: :cascade do |t|
    t.text     "message"
    t.integer  "article_id"
    t.string   "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caves", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.text     "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "clinic_comments", force: :cascade do |t|
    t.text     "message"
    t.integer  "article_id"
    t.string   "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.string   "user_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "like2s", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "cafe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "like2s", ["cafe_id"], name: "index_like2s_on_cafe_id"
  add_index "like2s", ["user_id"], name: "index_like2s_on_user_id"

  create_table "like3s", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "meeting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "like3s", ["meeting_id"], name: "index_like3s_on_meeting_id"
  add_index "like3s", ["user_id"], name: "index_like3s_on_user_id"

  create_table "like4s", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "like4s", ["clinic_id"], name: "index_like4s_on_clinic_id"
  add_index "like4s", ["user_id"], name: "index_like4s_on_user_id"

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "pension_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "likes", ["pension_id"], name: "index_likes_on_pension_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "meeting_comments", force: :cascade do |t|
    t.text     "message"
    t.integer  "article_id"
    t.string   "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.text     "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "pension_comments", force: :cascade do |t|
    t.text     "message"
    t.integer  "article_id"
    t.string   "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pensions", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.text     "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
