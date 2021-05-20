# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_20_035549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.string "name", null: false
    t.integer "gender", null: false
    t.integer "height"
    t.integer "weight"
    t.bigint "country_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_athletes_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "country", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medal_events", force: :cascade do |t|
    t.bigint "sport_event_id"
    t.bigint "athlete_id"
    t.bigint "medal_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["athlete_id"], name: "index_medal_events_on_athlete_id"
    t.index ["medal_id"], name: "index_medal_events_on_medal_id"
    t.index ["sport_event_id"], name: "index_medal_events_on_sport_event_id"
  end

  create_table "medals", force: :cascade do |t|
    t.string "medal_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sport_categories", force: :cascade do |t|
    t.string "sports_name"
    t.string "season"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sport_events", force: :cascade do |t|
    t.string "event"
    t.bigint "sport_category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sport_category_id"], name: "index_sport_events_on_sport_category_id"
  end

end
