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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131227124022) do

  create_table "algorithms", :force => true do |t|
    t.integer  "player_id"
    t.string   "title"
    t.text     "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "battles", :force => true do |t|
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "battles_algorithms", :force => true do |t|
    t.integer "battle_id"
    t.integer "algorithm_id"
  end

  create_table "battles_players", :force => true do |t|
    t.integer "battle_id"
    t.integer "player_id"
  end

  create_table "games", :force => true do |t|
    t.string   "title"
    t.integer  "creator_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.string   "email"
    t.string   "screen_name"
    t.string   "encrypted_password"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rules", :force => true do |t|
    t.integer  "game_id"
    t.integer  "order"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
