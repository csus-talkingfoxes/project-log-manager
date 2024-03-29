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

ActiveRecord::Schema.define(:version => 20120212020155) do

  create_table "agenda_checkins", :force => true do |t|
    t.integer  "user_id"
    t.integer  "agenda_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "agenda_checkins", ["agenda_id"], :name => "index_agenda_checkins_on_agenda_id"
  add_index "agenda_checkins", ["user_id"], :name => "index_agenda_checkins_on_user_id"

  create_table "agenda_items", :force => true do |t|
    t.integer  "user_id"
    t.string   "item"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "agenda_id"
  end

  add_index "agenda_items", ["agenda_id"], :name => "index_agenda_items_on_agenda_id"
  add_index "agenda_items", ["user_id"], :name => "index_agenda_items_on_user_id"

  create_table "agenda_types", :force => true do |t|
    t.string   "typestring"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "agendas", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "agenda_type_id"
  end

  add_index "agendas", ["user_id"], :name => "index_agendas_on_user_id"

  create_table "log_units", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "user_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",                     :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"

end
