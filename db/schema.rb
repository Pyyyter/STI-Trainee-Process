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

ActiveRecord::Schema[7.0].define(version: 2023_08_17_025753) do
  create_table "campus", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "description"
    t.string "adress"
    t.integer "number"
    t.string "neighbourhood"
    t.string "city"
    t.integer "cep"
    t.date "deactivationDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caronas", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "motorista"
    t.string "inicio"
    t.string "fim"
    t.date "data"
    t.time "hora"
    t.integer "numero_de_passageiros"
    t.decimal "custo", precision: 10
    t.text "observacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paradas", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "local"
    t.bigint "carona_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carona_id"], name: "index_paradas_on_carona_id"
  end

  create_table "uff_campus", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "description"
    t.string "adress"
    t.integer "number"
    t.string "neighbourhood"
    t.string "city"
    t.integer "cep"
    t.date "deactivationDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "paradas", "caronas"
end
