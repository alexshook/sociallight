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

ActiveRecord::Schema.define(version: 20140605190358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auction_participants", force: true do |t|
    t.integer "auction_id"
    t.integer "user_id"
    t.boolean "completed",  default: false
  end

  add_index "auction_participants", ["auction_id"], name: "index_auction_participants_on_auction_id", using: :btree
  add_index "auction_participants", ["user_id"], name: "index_auction_participants_on_user_id", using: :btree

  create_table "auctions", force: true do |t|
    t.integer  "user_id",            limit: 8
    t.integer  "category_id"
    t.string   "title"
    t.text     "description"
    t.datetime "time_begin"
    t.datetime "time_end"
    t.datetime "event_date"
    t.boolean  "completed",                    default: false
    t.integer  "num_of_req_bids"
    t.string   "address"
    t.integer  "lat"
    t.integer  "long"
    t.string   "website"
    t.string   "img_url"
    t.boolean  "notifications_sent",           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "bids", force: true do |t|
    t.integer  "user_id"
    t.integer  "auction_id"
    t.string   "comment"
    t.boolean  "viewed",     default: false
    t.boolean  "won",        default: false
    t.boolean  "archived",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string "title"
    t.string "description"
    t.string "badge_photo"
  end

  create_table "messages", force: true do |t|
    t.integer  "sender_id",   limit: 8
    t.integer  "receiver_id", limit: 8
    t.integer  "auction_id",            default: 0
    t.text     "content"
    t.boolean  "viewed",                default: false
    t.boolean  "archived",              default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.string   "keywords"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "distance"
  end

  create_table "users", force: true do |t|
    t.string   "uid"
    t.string   "oauth_token"
    t.integer  "oauth_token_expires_at"
    t.string   "name"
    t.string   "profile_photo"
    t.string   "city"
    t.string   "bio"
    t.string   "badges",                 default: [], array: true
    t.string   "provider"
    t.string   "email"
    t.integer  "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
