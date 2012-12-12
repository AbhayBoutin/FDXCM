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

ActiveRecord::Schema.define(:version => 20121212072517) do

  create_table "addendums", :force => true do |t|
    t.string   "fedexAddendumName"
    t.integer  "fedexAddendumNumber"
    t.string   "fedexContractorAddendumName"
    t.integer  "fedexContractorAddendumNumber"
    t.text     "content"
    t.datetime "startDate"
    t.datetime "endDate"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

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

  create_table "fedex_contracts", :force => true do |t|
    t.string   "fedexContractName"
    t.integer  "fedexContractNumber"
    t.string   "contractorContractName"
    t.integer  "contractorContractNumber"
    t.text     "content"
    t.datetime "startDate"
    t.datetime "endDate"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
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

  create_table "psa_states", :force => true do |t|
    t.integer  "psa_id"
    t.integer  "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "psa_states", ["psa_id"], :name => "index_psa_states_on_psa_id"
  add_index "psa_states", ["state_id"], :name => "index_psa_states_on_state_id"

  create_table "psas", :force => true do |t|
    t.string   "fedexPSAName"
    t.integer  "fedexPSANumber"
    t.string   "contractorPSAName"
    t.integer  "contractorPSANumber"
    t.boolean  "activeBoolean"
    t.datetime "startDate"
    t.datetime "endDate"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "fedexRegionName"
    t.integer  "fedexRegionNumber"
    t.string   "fedexRegionPhone"
    t.string   "contractorRegionName"
    t.integer  "contractorRegionNumber"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "state"
    t.string   "abbreviation"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
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

  create_table "zips", :force => true do |t|
    t.string   "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
