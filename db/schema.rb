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

ActiveRecord::Schema.define(version: 20140425182907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "proposals", force: true do |t|
    t.integer  "user_id"
    t.integer  "reseller_id"
    t.integer  "company_id"
    t.integer  "opportunity_id"
    t.string   "status"
    t.datetime "approved_date"
    t.datetime "declined_date"
    t.datetime "sent_date"
    t.datetime "completed_date"
    t.string   "access_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
