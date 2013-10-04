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

ActiveRecord::Schema.define(:version => 20131003205112) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "cursos", :force => true do |t|
    t.string   "nome"
    t.integer  "codigo"
    t.integer  "instituicao_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "cursos", ["instituicao_id"], :name => "index_cursos_on_instituicao_id"

  create_table "dimensoes", :force => true do |t|
    t.integer  "ordem"
    t.string   "nome"
    t.integer  "pesquisa_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "dimensoes", ["pesquisa_id"], :name => "index_dimensoes_on_pesquisa_id"

  create_table "instituicoes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "perguntas", :force => true do |t|
    t.integer  "ordem"
    t.string   "nome"
    t.integer  "dimensao_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "perguntas", ["dimensao_id"], :name => "index_perguntas_on_dimensao_id"

  create_table "pesquisas", :force => true do |t|
    t.integer  "instituicao_id"
    t.integer  "ano"
    t.string   "nome"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "periodo"
  end

  add_index "pesquisas", ["instituicao_id"], :name => "index_pesquisas_on_instituicao_id"

  create_table "respostas", :force => true do |t|
    t.integer  "resposta"
    t.integer  "pergunta_id"
    t.integer  "usuario_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "respostas", ["pergunta_id"], :name => "index_respostas_on_pergunta_id"
  add_index "respostas", ["usuario_id"], :name => "index_respostas_on_usuario_id"

  create_table "usuarios", :force => true do |t|
    t.string   "login"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
