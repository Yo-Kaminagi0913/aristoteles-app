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

ActiveRecord::Schema[7.0].define(version: 2025_02_09_081014) do
  create_table "beat_sheet_answers", charset: "utf8mb3", force: :cascade do |t|
    t.text "content", null: false
    t.integer "percentage", null: false
    t.integer "lows_and_highs", null: false
    t.bigint "story_id", null: false
    t.bigint "beat_sheet_question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beat_sheet_question_id"], name: "index_beat_sheet_answers_on_beat_sheet_question_id"
    t.index ["story_id"], name: "index_beat_sheet_answers_on_story_id"
  end

  create_table "beat_sheet_questions", charset: "utf8mb3", force: :cascade do |t|
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", charset: "utf8mb3", force: :cascade do |t|
    t.string "title"
    t.integer "genre_id"
    t.integer "medium_id"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stories_on_user_id"
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "beat_sheet_answers", "beat_sheet_questions"
  add_foreign_key "beat_sheet_answers", "stories"
  add_foreign_key "stories", "users"
end
