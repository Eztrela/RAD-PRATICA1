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

ActiveRecord::Schema[7.0].define(version: 2024_12_04_172531) do
  create_table "contatos", force: :cascade do |t|
    t.string "tipo", null: false
    t.decimal "valor", null: false
    t.integer "loja_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loja_id"], name: "index_contatos_on_loja_id"
    t.index ["valor"], name: "unique_value", unique: true
  end

  create_table "gerentes", force: :cascade do |t|
    t.string "nome", null: false
    t.date "nascimento", null: false
    t.integer "loja_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loja_id"], name: "index_gerentes_on_loja_id"
  end

  create_table "lojas", force: :cascade do |t|
    t.string "nome", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nome"], name: "unique_name", unique: true
  end

  add_foreign_key "contatos", "lojas"
  add_foreign_key "gerentes", "lojas"
end
