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

ActiveRecord::Schema.define(version: 20160308051536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "nome_fantasia"
    t.string   "cnpj"
    t.string   "endereco"
    t.string   "email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "contas", force: :cascade do |t|
    t.string   "nome"
    t.string   "agencia"
    t.string   "conta_corrente"
    t.integer  "boleto_carteira"
    t.string   "boleto_nome_cedente"
    t.string   "boleto_documento_cedente"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "boleto_variacao"
    t.string   "boleto_convenio"
  end

  create_table "servicos", force: :cascade do |t|
    t.string   "descricao"
    t.decimal  "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  create_table "vendas", force: :cascade do |t|
    t.integer  "cliente_id"
    t.text     "descricao"
    t.date     "data_faturamento"
    t.date     "data_cobranca"
    t.boolean  "pago"
    t.decimal  "valor"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "conta_id"
  end

  add_index "vendas", ["cliente_id"], name: "index_vendas_on_cliente_id", using: :btree
  add_index "vendas", ["conta_id"], name: "index_vendas_on_conta_id", using: :btree

  add_foreign_key "vendas", "clientes"
  add_foreign_key "vendas", "contas"
end
