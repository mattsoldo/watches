# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_10_160042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "watches", force: :cascade do |t|
    t.string "brand"
    t.string "movement"
    t.string "reference"
    t.string "case_material"
    t.integer "year"
    t.float "case_diameter"
    t.float "case_height"
    t.float "lug_width"
    t.text "description"
    t.decimal "retail_price"
    t.string "url"
    t.string "collection"
    t.string "dial_color"
    t.string "strap"
    t.string "buckle"
    t.string "numerals"
    t.string "water_resistance"
    t.string "glass"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
