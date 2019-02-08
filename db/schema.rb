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

ActiveRecord::Schema.define(version: 20190208145629) do

  create_table "articles", force: :cascade do |t|
    t.string "oca"
    t.string "operator_name"
    t.string "officer_name"
    t.string "ncic_num"
    t.string "make"
    t.string "model"
    t.string "serial"
    t.text "description"
    t.string "owner_name"
    t.string "owner_phone"
    t.string "date_add"
    t.string "date_remove"
    t.string "remove_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boats", force: :cascade do |t|
    t.string "oca"
    t.string "operator_name"
    t.string "officer_name"
    t.string "ncic_num"
    t.text "description"
    t.string "owner_name"
    t.string "owner_phone"
    t.string "date_add"
    t.string "date_remove"
    t.string "remove_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "civil_citations", force: :cascade do |t|
    t.string "book_num"
    t.string "issued_to"
    t.string "start_c_num"
    t.string "end_c_num"
    t.string "issue_date"
    t.string "issue_by"
    t.string "return_date"
    t.text "return_by"
    t.string "empty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "code_citations", force: :cascade do |t|
    t.string "book_num"
    t.string "issued_to"
    t.string "start_c_num"
    t.string "end_c_num"
    t.string "issue_date"
    t.string "issue_by"
    t.string "return_date"
    t.text "return_by"
    t.string "empty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incidents", force: :cascade do |t|
    t.string "date"
    t.string "coworker"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "license_plates", force: :cascade do |t|
    t.string "oca"
    t.string "operator_name"
    t.string "officer_name"
    t.string "ncic_num"
    t.string "license_plate"
    t.string "state"
    t.string "owner_name"
    t.string "owner_phone"
    t.string "date_add"
    t.string "date_remove"
    t.string "remove_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "missing_people", force: :cascade do |t|
    t.string "oca"
    t.string "operator_name"
    t.string "officer_name"
    t.string "ncic_num"
    t.string "missing_f_name"
    t.string "missing_l_name"
    t.string "missing_dob"
    t.string "missing_race"
    t.string "missing_sex"
    t.string "owner_name"
    t.string "owner_phone"
    t.string "date_add"
    t.string "date_remove"
    t.string "remove_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_citations", force: :cascade do |t|
    t.string "book_num"
    t.string "issued_to"
    t.string "start_c_num"
    t.string "end_c_num"
    t.string "issue_date"
    t.string "issue_by"
    t.string "return_date"
    t.text "return_by"
    t.string "empty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recovered_guns", force: :cascade do |t|
    t.string "oca"
    t.string "operator_name"
    t.string "officer_name"
    t.string "ncic_num"
    t.string "make"
    t.string "model"
    t.string "caliber"
    t.string "serial"
    t.string "owner_name"
    t.string "owner_phone"
    t.text "notes"
    t.string "date_add"
    t.string "date_remove"
    t.string "remove_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recovered_vehicles", force: :cascade do |t|
    t.string "oca"
    t.string "operator_name"
    t.string "officer_name"
    t.string "ncic_num"
    t.string "year"
    t.string "make"
    t.string "model"
    t.string "vin"
    t.string "license_plate"
    t.string "color"
    t.string "wrecker"
    t.string "date_add"
    t.string "date_remove"
    t.string "remove_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "securities", force: :cascade do |t|
    t.string "oca"
    t.string "operator_name"
    t.string "officer_name"
    t.string "ncic_num"
    t.string "serial"
    t.string "owner_name"
    t.string "owner_phone"
    t.string "date_add"
    t.string "date_remove"
    t.string "remove_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "separations", force: :cascade do |t|
    t.string "officer"
    t.string "callsign"
    t.boolean "ad"
    t.boolean "email"
    t.boolean "rms_login"
    t.boolean "rms_seperation"
    t.boolean "switch"
    t.boolean "cad_login"
    t.boolean "dci"
    t.boolean "ncaware"
    t.boolean "cjleads"
    t.boolean "edotcom"
    t.boolean "leads"
    t.boolean "accurint"
    t.boolean "cardkey"
    t.boolean "pwgate"
    t.boolean "linx"
    t.boolean "lexipol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "state_citations", force: :cascade do |t|
    t.string "book_num"
    t.string "issued_to"
    t.string "start_c_num"
    t.string "end_c_num"
    t.string "issue_date"
    t.string "issue_by"
    t.string "return_date"
    t.text "return_by"
    t.string "empty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stolen_guns", force: :cascade do |t|
    t.string "oca"
    t.string "operator_name"
    t.string "officer_name"
    t.string "ncic_num"
    t.string "make"
    t.string "model"
    t.string "caliber"
    t.string "serial"
    t.string "owner_name"
    t.string "owner_phone"
    t.text "notes"
    t.string "date_add"
    t.string "date_remove"
    t.string "remove_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stolen_vehicles", force: :cascade do |t|
    t.string "oca"
    t.string "operator_name"
    t.string "officer_name"
    t.string "ncic_num"
    t.string "year"
    t.string "make"
    t.string "model"
    t.string "vin"
    t.string "license_plate"
    t.string "color"
    t.string "owner_name"
    t.string "owner_phone"
    t.string "date_add"
    t.string "date_remove"
    t.string "remove_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_boat_parts", force: :cascade do |t|
    t.string "oca"
    t.string "operator_name"
    t.string "officer_name"
    t.string "ncic_num"
    t.text "description"
    t.string "owner_name"
    t.string "owner_phone"
    t.string "date_add"
    t.string "date_remove"
    t.string "remove_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wanted_people", force: :cascade do |t|
    t.string "oca"
    t.string "operator_name"
    t.string "officer_name"
    t.string "ncic_num"
    t.text "description"
    t.string "owner_name"
    t.string "owner_phone"
    t.string "date_add"
    t.string "date_remove"
    t.string "remove_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "warning_citations", force: :cascade do |t|
    t.string "book_num"
    t.string "issued_to"
    t.string "start_c_num"
    t.string "end_c_num"
    t.string "issue_date"
    t.string "issue_by"
    t.string "return_date"
    t.text "return_by"
    t.string "empty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
