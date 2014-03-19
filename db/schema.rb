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

ActiveRecord::Schema.define(version: 20140318004307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "categorizations", force: true do |t|
    t.integer "resource_id"
    t.integer "category_id"
  end

  create_table "movies", force: true do |t|
    t.string   "primary"
    t.string   "secondary"
    t.string   "tertiary"
    t.string   "source"
    t.string   "author"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "stem"
    t.string   "answer"
    t.string   "topic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "option_a"
    t.string   "option_b"
    t.string   "option_c"
    t.string   "option_d"
    t.string   "option_e"
  end

  create_table "resources", force: true do |t|
    t.string   "title"
    t.string   "authors"
    t.text     "description"
    t.string   "image_url"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "edition"
    t.integer  "year"
  end

  create_table "sites", force: true do |t|
    t.string   "category"
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authors"
    t.string   "pricing"
  end

end
