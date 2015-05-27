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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150526171723) do
=======
ActiveRecord::Schema.define(version: 20150526170630) do
>>>>>>> c3a9b1ce3e316c4225d9e7fdabe73468eff4e72f

  create_table "airports", force: :cascade do |t|
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "flights", force: :cascade do |t|
    t.datetime "date"
    t.integer  "duration"
    t.integer  "origin_id"
    t.integer  "destination_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

=======
>>>>>>> c3a9b1ce3e316c4225d9e7fdabe73468eff4e72f
end
