# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091127213407) do

  create_table "case_events", :force => true do |t|
    t.text     "type"
    t.text     "description"
    t.datetime "datetime"
    t.text     "startstatus"
    t.text     "endstatus"
    t.text     "startpriority"
    t.text     "endpriority"
    t.datetime "nextdeadline"
    t.boolean  "slamet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.string   "login",                              :null => false
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles_roles", :id => false, :force => true do |t|
    t.integer "profile_id"
    t.integer "role_id"
  end

  add_index "profiles_roles", ["profile_id"], :name => "index_profiles_roles_on_profile_id"
  add_index "profiles_roles", ["role_id"], :name => "index_profiles_roles_on_role_id"

  create_table "queries", :force => true do |t|
    t.date     "startdate"
    t.date     "enddate"
    t.boolean  "closed"
    t.datetime "lastrun"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "queries_sf_cases", :id => false, :force => true do |t|
    t.integer "query_id"
    t.integer "sf_case_id"
  end

  add_index "queries_sf_cases", ["query_id"], :name => "index_queries_sf_cases_on_query_id"
  add_index "queries_sf_cases", ["sf_case_id"], :name => "index_queries_sf_cases_on_sf_case_id"

  create_table "queries_sf_record_types", :id => false, :force => true do |t|
    t.integer "query_id"
    t.integer "sf_record_type_id"
  end

  add_index "queries_sf_record_types", ["query_id"], :name => "index_queries_sf_record_types_on_query_id"
  add_index "queries_sf_record_types", ["sf_record_type_id"], :name => "index_queries_sf_record_types_on_sf_record_type_id"

  create_table "queries_sf_users", :id => false, :force => true do |t|
    t.integer "query_id"
    t.integer "sf_user_id"
  end

  add_index "queries_sf_users", ["query_id"], :name => "index_queries_sf_users_on_query_id"
  add_index "queries_sf_users", ["sf_user_id"], :name => "index_queries_sf_users_on_sf_user_id"

  create_table "rights", :force => true do |t|
    t.text     "name",           :null => false
    t.text     "description"
    t.text     "controllername"
    t.text     "actionname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.text     "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_rights", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "right_id"
  end

  add_index "roles_rights", ["right_id"], :name => "index_roles_rights_on_right_id"
  add_index "roles_rights", ["role_id"], :name => "index_roles_rights_on_role_id"

  create_table "salesforce_case_comments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salesforce_case_histories", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salesforce_case_statuses", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salesforce_cases", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salesforce_record_types", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salesforce_users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sf_cases", :force => true do |t|
    t.string   "case_advocate_id"
    t.string   "case_number"
    t.string   "case_type"
    t.datetime "sf_closed_date"
    t.datetime "sf_created_date"
    t.string   "description"
    t.string   "sfid",                  :null => false
    t.boolean  "is_closed"
    t.datetime "sf_last_modified_date"
    t.string   "owner_id"
    t.string   "priority"
    t.string   "record_type_id"
    t.string   "status"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sf_record_types", :force => true do |t|
    t.text     "name",                           :null => false
    t.text     "sfid",                           :null => false
    t.boolean  "active",      :default => true,  :null => false
    t.boolean  "sla",         :default => false, :null => false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sf_users", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "sfid",       :null => false
    t.string   "last_name"
    t.string   "name"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
