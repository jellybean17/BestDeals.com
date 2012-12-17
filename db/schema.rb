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

ActiveRecord::Schema.define(:version => 20121215103830) do

  create_table "consumers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "phone_number"
    t.integer  "credit_card_number"
    t.decimal  "amount"
    t.integer  "deal_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "deal_owners", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "deal_owners", ["email"], :name => "index_deal_owners_on_email", :unique => true
  add_index "deal_owners", ["reset_password_token"], :name => "index_deal_owners_on_reset_password_token", :unique => true

  create_table "deals", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "units_available"
    t.datetime "expiry_date"
    t.decimal  "price"
    t.integer  "discount"
    t.integer  "DealOwner_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "deals", ["DealOwner_id"], :name => "index_deals_on_DealOwner_id"

  create_table "transactions", :force => true do |t|
    t.datetime "date_time"
    t.integer  "creditcard_number"
    t.decimal  "amount"
    t.integer  "deal_id"
    t.integer  "consumer_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "transactions", ["consumer_id"], :name => "index_transactions_on_consumer_id"
  add_index "transactions", ["deal_id"], :name => "index_transactions_on_deal_id"

end
