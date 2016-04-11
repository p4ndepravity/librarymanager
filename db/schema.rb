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

ActiveRecord::Schema.define(version: 20160316210516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author_last_name"
    t.string   "author_first_name"
    t.integer  "rating"
    t.string   "isbn_10"
    t.string   "isbn_13"
    t.datetime "publish_date"
    t.integer  "genre_id", default: 5
    t.boolean  "is_fiction"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patrons", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone_number"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "transaction_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "patron_id"
    t.integer  "book_id"
    t.integer  "transaction_type_id", default: 5
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_foreign_key "transactions", "books"
  add_foreign_key "transactions", "patrons"
  add_foreign_key "transactions", "transaction_types"
  add_foreign_key "books", "genres"
  add_index :patrons, :email, unique: true
end
