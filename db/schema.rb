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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140705001208) do

  create_table "cases", :force => true do |t|
    t.string   "title"
    t.string   "summary"
    t.integer  "user_1_vote_count", :default => 0
    t.integer  "user_2_vote_count", :default => 0
    t.string   "status",            :default => "pending"
    t.string   "winner"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "cases_users", :force => true do |t|
    t.integer  "case_id"
    t.integer  "user_id"
    t.string   "party"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.integer  "parent_comment_id"
    t.integer  "user_id"
    t.integer  "case_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "evidences", :force => true do |t|
    t.text     "argument"
    t.string   "video_url"
    t.string   "photo_url"
    t.integer  "cases_user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "password_hash"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "votes", :force => true do |t|
    t.string   "direction"
    t.integer  "comment_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end