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

ActiveRecord::Schema.define(:version => 20130206062826) do

  create_table "representatives", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.boolean  "leader"
    t.integer  "state_id"
    t.string   "district"
    t.string   "url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "bioguide_id"
    t.string   "birthday"
    t.string   "chamber"
    t.string   "contact_form"
    t.string   "crp_id"
    t.string   "facebook_id"
    t.string   "fax"
    t.string   "fec_ids"
    t.string   "first_name"
    t.string   "gender"
    t.string   "govtrack_id"
    t.string   "in_office"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "name_suffix"
    t.string   "nickname"
    t.string   "office"
    t.string   "party"
    t.string   "phone"
    t.string   "thomas_id"
    t.string   "twitter_id"
    t.string   "votesmart_id"
    t.string   "website"
    t.string   "youtube_id"
    t.string   "lis_id"
    t.string   "senate_class"
    t.string   "state_rank"
  end

  add_index "representatives", ["state_id"], :name => "index_representatives_on_state_id"

  create_table "signatures", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "newsletter"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.string   "ansi_code"
    t.string   "statens"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
