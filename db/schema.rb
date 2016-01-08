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

ActiveRecord::Schema.define(version: 20160108094020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "body"
    t.integer  "post_id"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "comments", ["customer_id"], name: "index_comments_on_customer_id", using: :btree
  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "email"
    t.string   "address_line_1"
    t.integer  "address_line_two"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "cc_name"
    t.integer  "cc_number"
    t.integer  "exp_month"
    t.integer  "exp_year"
    t.integer  "cvv"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "password_digest"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "name"
    t.string   "body"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "posts", ["customer_id"], name: "index_posts_on_customer_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "country_of_origin"
    t.float    "quantity"
    t.float    "price"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "customer"
    t.integer  "customer_id"
  end

  add_index "products", ["customer_id"], name: "index_products_on_customer_id", using: :btree

  add_foreign_key "comments", "customers"
  add_foreign_key "comments", "posts"
  add_foreign_key "posts", "customers"
  add_foreign_key "products", "customers"
end
