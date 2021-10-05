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

ActiveRecord::Schema.define(version: 2021_10_05_234310) do

  create_table "people", force: :cascade do |t|
    t.string "person_first_name"
    t.string "person_middle_name"
    t.string "person_last_name"
    t.text "person_role"
    t.integer "person_number", null: false
    t.string "person_email"
    t.string "person_telephone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sites", force: :cascade do |t|
    t.integer "site_number"
    t.string "facility_name"
    t.string "site_address"
    t.string "site_city"
    t.string "site_state_or_county"
    t.string "site_postal_code"
    t.string "site_country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
