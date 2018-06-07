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

ActiveRecord::Schema.define(version: 20180606135819) do

  create_table "articulos", force: :cascade do |t|
    t.string "titulo"
    t.text "contenido"
    t.integer "autor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "categoria_id"
    t.index ["autor_id"], name: "index_articulos_on_autor_id"
    t.index ["categoria_id"], name: "index_articulos_on_categoria_id"
  end

  create_table "autors", force: :cascade do |t|
    t.string "autor"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.text "nombre"
    t.string "texto"
    t.integer "articulo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["articulo_id"], name: "index_comentarios_on_articulo_id"
  end

end
