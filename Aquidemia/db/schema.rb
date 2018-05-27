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

ActiveRecord::Schema.define(version: 20180517143151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gyms", force: :cascade do |t|
    t.integer "number"
    t.integer "rpa"
    t.string "microregion"
    t.integer "cnes"
    t.string "name"
    t.string "adress"
    t.string "bairro"
    t.string "phone"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "hour"
    t.decimal "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "token"
    t.string "refresh_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.boolean "vote", default: false, null: false
    t.string "voteable_type", null: false
    t.bigint "voteable_id", null: false
    t.string "voter_type"
    t.bigint "voter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["voteable_id", "voteable_type"], name: "index_votes_on_voteable_id_and_voteable_type"
    t.index ["voteable_type", "voteable_id"], name: "index_votes_on_voteable_type_and_voteable_id"
    t.index ["voter_id", "voter_type", "voteable_id", "voteable_type"], name: "fk_one_vote_per_user_per_entity", unique: true
    t.index ["voter_id", "voter_type"], name: "index_votes_on_voter_id_and_voter_type"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter_type_and_voter_id"
  end

end
