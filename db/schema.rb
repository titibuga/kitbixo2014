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

ActiveRecord::Schema.define(:version => 20140207180426) do

  create_table "bixos", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "email"
    t.string   "curso"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "esporte_bixos", :force => true do |t|
    t.integer  "bixo_id"
    t.integer  "esporte_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "esporte_bixos", ["bixo_id"], :name => "index_esporte_bixos_on_bixo_id"
  add_index "esporte_bixos", ["esporte_id"], :name => "index_esporte_bixos_on_esporte_id"

  create_table "esportes", :force => true do |t|
    t.string   "modalidade"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pagamentos", :force => true do |t|
    t.integer  "valor"
    t.string   "responsavel"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "venda_id"
  end

  add_index "pagamentos", ["venda_id"], :name => "index_pagamentos_on_venda_id"

  create_table "vendas", :force => true do |t|
    t.string   "cor_da_mochila"
    t.string   "tamanho_camisa"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "bixo_id"
  end

  add_index "vendas", ["bixo_id"], :name => "index_vendas_on_bixo_id"

  create_table "veteranos", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
