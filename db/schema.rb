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

ActiveRecord::Schema.define(version: 20171204161524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "categorizations", force: true do |t|
    t.integer "resource_id"
    t.integer "category_id"
  end

  create_table "employers", force: true do |t|
    t.string   "name_lgl"
    t.integer  "n_employees"
    t.text     "locations"
    t.text     "hospitals"
    t.string   "employer_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "headings", force: true do |t|
    t.string "code"
    t.string "heading"
  end

  create_table "informatics", force: true do |t|
    t.string "section"
    t.string "topic"
    t.string "acronym"
    t.text   "information"
  end

  create_table "jewels", force: true do |t|
    t.string "sku"
    t.text   "name"
    t.string "price"
    t.string "collection"
    t.text   "image"
  end

  create_table "lectures", force: true do |t|
    t.string   "speaker"
    t.string   "title"
    t.string   "institution"
    t.date     "date"
    t.string   "link"
    t.string   "topic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "group"
    t.string   "title"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providers", force: true do |t|
    t.string   "npi"
    t.string   "last"
    t.string   "first"
    t.string   "middle"
    t.string   "ms"
    t.string   "grad"
    t.string   "primary"
    t.string   "secondary"
    t.string   "name_lgl"
    t.string   "name_common"
    t.string   "size"
    t.string   "city"
    t.string   "state"
    t.string   "aff1"
    t.string   "aff2"
    t.string   "aff3"
    t.string   "aff4"
    t.string   "aff5"
    t.string   "aba"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "stem"
    t.string   "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "option_a"
    t.string   "option_b"
    t.string   "option_c"
    t.string   "option_d"
    t.string   "option_e"
    t.string   "image"
    t.string   "exam"
  end

  create_table "residencies", force: true do |t|
    t.string   "state"
    t.string   "program"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "image"
    t.string   "rec"
  end

  create_table "subheadings", force: true do |t|
    t.integer "heading_id"
    t.string  "code"
    t.string  "subheading"
  end

  add_index "subheadings", ["heading_id"], name: "index_subheadings_on_heading_id", using: :btree

  create_table "subsubheadings", force: true do |t|
    t.integer "subheading_id"
    t.string  "code"
    t.string  "subsubheading"
  end

  add_index "subsubheadings", ["subheading_id"], name: "index_subsubheadings_on_subheading_id", using: :btree

  create_table "subsubsubheadings", force: true do |t|
    t.integer "subsubheading_id"
    t.string  "code"
    t.string  "subsubsubheading"
  end

  add_index "subsubsubheadings", ["subsubheading_id"], name: "index_subsubsubheadings_on_subsubheading_id", using: :btree

  create_table "topicalizations", force: true do |t|
    t.integer "question_id"
    t.integer "topic_id"
  end

  create_table "topics", force: true do |t|
    t.string "name"
  end

end
