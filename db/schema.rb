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

ActiveRecord::Schema[7.1].define(version: 2024_08_22_134329) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidacies", force: :cascade do |t|
    t.integer "match_level"
    t.string "status"
    t.bigint "offer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "job_seeker_id"
    t.index ["job_seeker_id"], name: "index_candidacies_on_job_seeker_id"
    t.index ["offer_id"], name: "index_candidacies_on_offer_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.bigint "candidacy_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "sender_id"
    t.bigint "receiver_id"
    t.index ["candidacy_id"], name: "index_chatrooms_on_candidacy_id"
    t.index ["receiver_id"], name: "index_chatrooms_on_receiver_id"
    t.index ["sender_id"], name: "index_chatrooms_on_sender_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "offer_id", null: false
    t.bigint "user_job_search_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_matches_on_offer_id"
    t.index ["user_job_search_id"], name: "index_matches_on_user_job_search_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "chatroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "title"
    t.string "contrat_type"
    t.string "experience_level"
    t.string "salary"
    t.string "study_level"
    t.string "sector"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.bigint "recruiter_id"
    t.index ["recruiter_id"], name: "index_offers_on_recruiter_id"
  end

  create_table "user_job_searches", force: :cascade do |t|
    t.string "title"
    t.string "contrat_type"
    t.string "experience_level"
    t.string "salary"
    t.string "study_level"
    t.string "sector"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "city"
    t.bigint "job_seeker_id"
    t.index ["job_seeker_id"], name: "index_user_job_searches_on_job_seeker_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role"
    t.string "phone"
    t.string "address"
    t.text "diplome"
    t.text "experience"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "candidacies", "offers"
  add_foreign_key "candidacies", "users", column: "job_seeker_id"
  add_foreign_key "chatrooms", "candidacies"
  add_foreign_key "chatrooms", "users", column: "receiver_id"
  add_foreign_key "chatrooms", "users", column: "sender_id"
  add_foreign_key "matches", "offers"
  add_foreign_key "matches", "user_job_searches"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "offers", "users", column: "recruiter_id"
  add_foreign_key "user_job_searches", "users", column: "job_seeker_id"
end
