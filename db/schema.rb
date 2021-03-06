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

ActiveRecord::Schema.define(version: 2019_02_27_102012) do

  create_table "pils", force: :cascade do |t|
    t.string "lastname"
    t.string "firstname"
    t.string "middlename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "passportSeries"
    t.string "passportNumber"
    t.date "passportIssuedDate"
    t.string "passportIssuedCode"
    t.string "passportIssuedBy"
    t.date "birthDate"
    t.string "passportBirthPlace"
    t.string "passportRegion"
    t.string "workinn"
    t.string "drafttoken"
    t.string "product"
    t.integer "limit"
    t.string "deliveryType"
    t.date "deliveryDate"
    t.string "deliveryAdress"
    t.boolean "dopDoc1"
    t.boolean "dopDoc2"
    t.boolean "isAccepted"
    t.boolean "isDeal"
    t.date "dealDate"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_campaign"
  end

end
