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

ActiveRecord::Schema.define(version: 2018_10_15_000732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "images"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "certificates", force: :cascade do |t|
    t.bigint "type_certificate_id"
    t.string "number"
    t.bigint "user_id"
    t.index ["type_certificate_id"], name: "index_certificates_on_type_certificate_id"
    t.index ["user_id"], name: "index_certificates_on_user_id"
  end

  create_table "class_schedules", force: :cascade do |t|
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_schedules_courses", id: false, force: :cascade do |t|
    t.bigint "class_schedule_id"
    t.bigint "course_id"
    t.index ["class_schedule_id"], name: "index_class_schedules_courses_on_class_schedule_id"
    t.index ["course_id"], name: "index_class_schedules_courses_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "name"
    t.string "gallery_images"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passports", force: :cascade do |t|
    t.string "number"
    t.bigint "user_id"
    t.bigint "type_passport_id"
    t.index ["type_passport_id"], name: "index_passports_on_type_passport_id"
    t.index ["user_id"], name: "index_passports_on_user_id"
  end

  create_table "sexes", force: :cascade do |t|
    t.string "name"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.string "ancestry"
    t.index ["ancestry"], name: "index_specialties_on_ancestry"
  end

  create_table "tranings", force: :cascade do |t|
    t.string "name"
  end

  create_table "type_certificates", force: :cascade do |t|
    t.string "name"
  end

  create_table "type_passports", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "middle_name"
    t.date "birthday"
    t.bigint "identification_number"
    t.string "address"
    t.string "phone"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false
    t.boolean "student", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.bigint "sex_id"
    t.bigint "specialty_id"
    t.bigint "traning_id"
    t.bigint "course_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["course_id"], name: "index_users_on_course_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["sex_id"], name: "index_users_on_sex_id"
    t.index ["specialty_id"], name: "index_users_on_specialty_id"
    t.index ["traning_id"], name: "index_users_on_traning_id"
  end

  add_foreign_key "articles", "users"
  add_foreign_key "certificates", "type_certificates"
  add_foreign_key "certificates", "users"
  add_foreign_key "passports", "type_passports"
  add_foreign_key "passports", "users"
  add_foreign_key "users", "courses"
  add_foreign_key "users", "sexes"
  add_foreign_key "users", "specialties"
  add_foreign_key "users", "tranings"
end
