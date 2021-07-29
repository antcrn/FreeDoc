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

ActiveRecord::Schema.define(version: 2021_07_29_140608) do

  create_table "appointements", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "patient_id"
    t.integer "doctor_id"
    t.integer "city_id"
    t.index ["city_id"], name: "index_appointements_on_city_id"
    t.index ["doctor_id"], name: "index_appointements_on_doctor_id"
    t.index ["patient_id"], name: "index_appointements_on_patient_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "city_id"
    t.index ["city_id"], name: "index_doctors_on_city_id"
  end

  create_table "join_doctors_specialities", force: :cascade do |t|
    t.integer "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "speciality_id"
    t.index ["doctor_id"], name: "index_join_doctors_specialities_on_doctor_id"
    t.index ["speciality_id"], name: "index_join_doctors_specialities_on_speciality_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "city_id"
    t.index ["city_id"], name: "index_patients_on_city_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointements", "cities"
  add_foreign_key "appointements", "doctors"
  add_foreign_key "appointements", "patients"
  add_foreign_key "doctors", "cities"
  add_foreign_key "join_doctors_specialities", "specialities"
  add_foreign_key "patients", "cities"
end
