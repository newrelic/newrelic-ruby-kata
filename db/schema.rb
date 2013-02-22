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

ActiveRecord::Schema.define(:version => 20130221160705) do

  create_table "cars", :force => true do |t|
    t.string   "make"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "drivers", :force => true do |t|
    t.string   "last_name"
    t.integer  "car_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "icons", :force => true do |t|
    t.integer  "web_site_id"
    t.binary   "icon"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "icons", ["web_site_id"], :name => "index_icons_on_web_site_id"

  create_table "page_contents", :force => true do |t|
    t.integer  "web_site_id"
    t.text     "body"
    t.text     "headers"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "page_contents", ["web_site_id"], :name => "index_page_contents_on_web_site_id"

  create_table "web_sites", :force => true do |t|
    t.integer  "rank"
    t.string   "url"
    t.text     "snippet"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
