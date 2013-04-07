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

ActiveRecord::Schema.define(:version => 20130407132245) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "identidade"
    t.string   "cpfcnpj"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "moderadors", :force => true do |t|
    t.string   "nome"
    t.string   "identidade"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "telefone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pedidos", :force => true do |t|
    t.string   "datapedido"
    t.string   "quantidadeproduto"
    t.string   "valordacompra"
    t.string   "formaenvio"
    t.string   "formapagamento"
    t.integer  "cliente_id"
    t.integer  "vendedor_id"
    t.integer  "moderador_id"
    t.integer  "produto_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "pedidos", ["cliente_id"], :name => "index_pedidos_on_cliente_id"
  add_index "pedidos", ["moderador_id"], :name => "index_pedidos_on_moderador_id"
  add_index "pedidos", ["produto_id"], :name => "index_pedidos_on_produto_id"
  add_index "pedidos", ["vendedor_id"], :name => "index_pedidos_on_vendedor_id"

  create_table "produtos", :force => true do |t|
    t.string   "nome"
    t.string   "fabricante"
    t.string   "datafabricacao"
    t.string   "preco"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "vendedors", :force => true do |t|
    t.string   "nome"
    t.string   "identidade"
    t.string   "cpfcnpj"
    t.string   "rua"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "telefone1"
    t.string   "telefone2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
