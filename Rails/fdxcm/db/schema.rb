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

ActiveRecord::Schema.define(:version => 20121208071748) do

  create_table "employees", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.integer  "fedexNumber"
    t.integer  "contractorNumber"
    t.date     "hireDate"
    t.date     "dateOfBirth"
    t.boolean  "activeBoolean"
    t.datetime "startDate"
    t.datetime "endDate"
    t.datetime "terminationDate"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "notes", :force => true do |t|
    t.integer  "notable_id"
    t.string   "notable_type"
    t.text     "content"
    t.datetime "startDate"
    t.datetime "endDate"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "terminals", :force => true do |t|
    t.string   "fedexTerminalName"
    t.integer  "fedexTerminalNumber"
    t.string   "contractorTerminalName"
    t.integer  "contractorTerminalNumber"
    t.boolean  "colocationBoolean"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_roles", ["role_id"], :name => "index_user_roles_on_role_id"
  add_index "user_roles", ["user_id"], :name => "index_user_roles_on_user_id"

  create_table "users", :force => true do |t|
    t.boolean  "contractorBoolean"
    t.boolean  "activeBoolean"
    t.integer  "employee_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "users", ["employee_id"], :name => "index_users_on_employee_id"

end
