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

ActiveRecord::Schema.define(version: 2020_07_17_210130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leaderboards", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "tournament_id"
    t.float "profit"
    t.integer "place"
    t.index ["tournament_id"], name: "index_leaderboards_on_tournament_id"
    t.index ["user_id", "tournament_id"], name: "index_leaderboards_on_user_id_and_tournament_id"
    t.index ["user_id"], name: "index_leaderboards_on_user_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.string "company"
    t.float "price"
    t.float "price_on_current_hour"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.boolean "weekly"
    t.boolean "daily"
    t.integer "winner_id"
    t.index ["winner_id"], name: "index_tournaments_on_winner_id"
  end

  create_table "user_stocks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "stock_id"
    t.index ["stock_id"], name: "index_user_stocks_on_stock_id"
    t.index ["user_id", "stock_id"], name: "index_user_stocks_on_user_id_and_stock_id"
    t.index ["user_id"], name: "index_user_stocks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "phone"
    t.string "email"
    t.string "password_digest"
  end

end
