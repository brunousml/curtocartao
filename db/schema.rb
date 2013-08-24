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

ActiveRecord::Schema.define(:version => 20130426002529) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.float    "saldo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "consumos", :force => true do |t|
    t.date     "data"
    t.integer  "cliente_id"
    t.integer  "quantidade"
    t.integer  "produto_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contribuicaos", :force => true do |t|
    t.integer  "cliente_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contribuicaos_custos", :id => false, :force => true do |t|
    t.integer "contribuicao_id"
    t.integer "custo_id"
    t.float   "valor"
  end

  create_table "contribuicaos_produtos", :id => false, :force => true do |t|
    t.integer "contribuicao_id"
    t.integer "produto_id"
    t.integer "quantidade"
  end

  create_table "custos", :force => true do |t|
    t.string   "nome"
    t.float    "meta"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "ordem"
  end

  create_table "grupos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "movimentacoes", :force => true do |t|
    t.string   "descricao"
    t.integer  "grupo_id"
    t.float    "valor"
    t.date     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "produtos", :force => true do |t|
    t.string   "nome"
    t.float    "preco"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "ordem"
  end

  create_table "recargas", :force => true do |t|
    t.integer  "cliente_id"
    t.float    "valor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
