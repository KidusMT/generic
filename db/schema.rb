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

ActiveRecord::Schema.define(version: 2019_09_24_143502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clock_times", force: :cascade do |t|
    t.datetime "check_in_time"
    t.datetime "checkout_time"
    t.string "remark"
    t.string "status"
    t.bigint "crew_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crew_id"], name: "index_clock_times_on_crew_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "crews", force: :cascade do |t|
    t.string "name"
    t.string "telephone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
  end

  add_foreign_key "clock_times", "crews"
end
