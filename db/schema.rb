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

ActiveRecord::Schema.define(:version => 20131031193045) do

  create_table "domains", :force => true do |t|
    t.integer  "event_id"
    t.string   "domain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_dates", :force => true do |t|
    t.integer  "event_id"
    t.date     "event_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "site_url"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.text     "stylesheet"
  end

  create_table "presentations", :force => true do |t|
    t.string   "title"
    t.string   "presenter"
    t.string   "contact"
    t.integer  "room_id"
    t.integer  "time_slot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "format"
    t.integer  "lock_version"
  end

  add_index "presentations", ["room_id", "time_slot_id"], :name => "index_presentations_on_room_id_and_time_slot_id", :unique => true

  create_table "roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role_type"
  end

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "capacity"
    t.integer  "position"
    t.integer  "event_date_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_slots", :force => true do |t|
    t.time     "start_time"
    t.integer  "duration"
    t.integer  "event_date_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
