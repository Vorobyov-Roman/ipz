# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160510230734) do

  create_table "applications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "sender_id"
    t.integer  "claimer_id"
    t.integer  "topic_id"
    t.string   "status"
    t.integer  "reviewer_id"
  end

  add_index "applications", ["claimer_id"], name: "index_applications_on_claimer_id"
  add_index "applications", ["reviewer_id"], name: "index_applications_on_reviewer_id"
  add_index "applications", ["sender_id"], name: "index_applications_on_sender_id"
  add_index "applications", ["topic_id"], name: "index_applications_on_topic_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_users", id: false, force: :cascade do |t|
    t.integer "user_id",     null: false
    t.integer "category_id", null: false
  end

  add_index "categories_users", ["user_id", "category_id"], name: "index_categories_users_on_user_id_and_category_id"

  create_table "conference_creators", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.integer  "conference_id"
  end

  add_index "conference_creators", ["conference_id"], name: "index_conference_creators_on_conference_id"
  add_index "conference_creators", ["user_id"], name: "index_conference_creators_on_user_id"

  create_table "conferences", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "application_id"
  end

  add_index "notes", ["application_id"], name: "index_notes_on_application_id"

  create_table "talks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "speaker_id"
    t.integer  "topic_id"
  end

  add_index "talks", ["speaker_id"], name: "index_talks_on_speaker_id"
  add_index "talks", ["topic_id"], name: "index_talks_on_topic_id"

  create_table "topic_reviewers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "topic_id"
  end

  add_index "topic_reviewers", ["topic_id"], name: "index_topic_reviewers_on_topic_id"
  add_index "topic_reviewers", ["user_id"], name: "index_topic_reviewers_on_user_id"

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "conference_id"
  end

  add_index "topics", ["conference_id"], name: "index_topics_on_conference_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
