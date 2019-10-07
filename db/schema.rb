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

ActiveRecord::Schema.define(version: 2018_02_18_174240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "categorizations", id: :serial, force: :cascade do |t|
    t.integer "resource_id"
    t.integer "category_id"
  end

  create_table "chessfilms", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.string "year", limit: 255
    t.string "time", limit: 255
    t.string "director", limit: 255
    t.string "image", limit: 255
    t.text "description"
    t.string "imdb_link", limit: 255
    t.string "trailer_link", limit: 255
    t.string "full_link", limit: 255
  end

  create_table "employers", force: :cascade do |t|
    t.string "name_lgl"
    t.integer "n_employees"
    t.text "locations"
    t.text "hospitals"
    t.string "employer_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "headings", id: :serial, force: :cascade do |t|
    t.string "code", limit: 255
    t.string "heading", limit: 255
  end

  create_table "informatics", id: :serial, force: :cascade do |t|
    t.string "section", limit: 255
    t.string "topic", limit: 255
    t.string "acronym", limit: 255
    t.text "information"
  end

  create_table "jewels", id: :serial, force: :cascade do |t|
    t.string "sku", limit: 255
    t.text "name"
    t.string "price", limit: 255
    t.string "collection", limit: 255
    t.text "image"
  end

  create_table "lectures", id: :serial, force: :cascade do |t|
    t.string "speaker", limit: 255
    t.string "title", limit: 255
    t.string "institution", limit: 255
    t.date "date"
    t.string "link", limit: 255
    t.string "topic", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", id: :serial, force: :cascade do |t|
    t.string "group", limit: 255
    t.string "title", limit: 255
    t.string "url", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providers", force: :cascade do |t|
    t.string "npi"
    t.string "last"
    t.string "first"
    t.string "middle"
    t.string "ms"
    t.string "grad"
    t.string "primary"
    t.string "secondary"
    t.string "name_lgl"
    t.string "name_common"
    t.string "size"
    t.string "city"
    t.string "state"
    t.string "aff1"
    t.string "aff2"
    t.string "aff3"
    t.string "aff4"
    t.string "aff5"
    t.string "aba"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", id: :serial, force: :cascade do |t|
    t.text "stem"
    t.string "answer", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "option_a", limit: 255
    t.string "option_b", limit: 255
    t.string "option_c", limit: 255
    t.string "option_d", limit: 255
    t.string "option_e", limit: 255
    t.string "image", limit: 255
    t.string "exam", limit: 255
  end

  create_table "residencies", force: :cascade do |t|
    t.string "state"
    t.string "program"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.string "authors", limit: 255
    t.text "description"
    t.string "image_url", limit: 255
    t.string "link", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "edition"
    t.integer "year"
  end

  create_table "sites", id: :serial, force: :cascade do |t|
    t.string "category", limit: 255
    t.string "title", limit: 255
    t.text "description"
    t.string "link", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "authors", limit: 255
    t.string "image", limit: 255
    t.string "rec", limit: 255
  end

  create_table "subheadings", id: :serial, force: :cascade do |t|
    t.integer "heading_id"
    t.string "code", limit: 255
    t.string "subheading", limit: 255
    t.index ["heading_id"], name: "index_subheadings_on_heading_id"
  end

  create_table "subsubheadings", id: :serial, force: :cascade do |t|
    t.integer "subheading_id"
    t.string "code", limit: 255
    t.string "subsubheading", limit: 255
    t.index ["subheading_id"], name: "index_subsubheadings_on_subheading_id"
  end

  create_table "subsubsubheadings", id: :serial, force: :cascade do |t|
    t.integer "subsubheading_id"
    t.string "code", limit: 255
    t.string "subsubsubheading", limit: 255
    t.index ["subsubheading_id"], name: "index_subsubsubheadings_on_subsubheading_id"
  end

  create_table "topicalizations", id: :serial, force: :cascade do |t|
    t.integer "question_id"
    t.integer "topic_id"
  end

  create_table "topics", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
  end

end
