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

ActiveRecord::Schema.define(version: 20170221012717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auditoria", force: :cascade do |t|
    t.integer  "room",       null: false
    t.integer  "capacity",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title",      null: false
    t.integer  "runtime",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "email",       null: false
    t.string   "credit_card", null: false
    t.date     "expiration",  null: false
    t.decimal  "total",       null: false
    t.integer  "showtime_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "showtimes", force: :cascade do |t|
    t.date     "showdate",                               null: false
    t.datetime "start_time",                             null: false
    t.datetime "end_time",                               null: false
    t.integer  "tickets_sold",                           null: false
    t.integer  "movie_id",                               null: false
    t.integer  "auditorium_id",                          null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.decimal  "price",         precision: 10, scale: 2
  end

end
