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

ActiveRecord::Schema.define(version: 2022_06_03_002750) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.integer "estimated_hours"
    t.integer "percent_complete"
    t.float "estimated_cost"
  end

  create_table "costs", force: :cascade do |t|
    t.string "name"
    t.float "total_cost"
    t.string "category"
    t.integer "employee_id"
    t.integer "activity_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.float "wage_rate"
    t.string "labor_union"
  end

end
