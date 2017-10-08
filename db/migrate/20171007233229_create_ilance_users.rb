class CreateIlanceUsers < ActiveRecord::Migration
  def up
    create_table "ilance_users", :primary_key => "user_id", :force => true do |t|
      t.string   "ipaddress",            :limit => 25,       :default => "",       :null => false
      t.integer  "iprestrict",                               :default => 0,        :null => false
      t.string   "username",             :limit => 50,       :default => "",       :null => false
      t.string   "password",             :limit => 32,       :default => "",       :null => false
      t.string   "salt",                 :limit => 5,        :default => "",       :null => false
      t.string   "secretquestion",       :limit => 200,      :default => "",       :null => false
      t.string   "secretanswer",         :limit => 32,       :default => "",       :null => false
      t.string   "email",                :limit => 60,       :default => "",       :null => false
      t.string   "first_name",           :limit => 100,      :default => "",       :null => false
      t.string   "last_name",            :limit => 100,      :default => "",       :null => false
      t.string   "address",              :limit => 200,      :default => "",       :null => false
      t.string   "address2",             :limit => 200
      t.string   "city",                 :limit => 100,      :default => "",       :null => false
      t.string   "state",                :limit => 100,      :default => "",       :null => false
      t.string   "zip_code",             :limit => 10,       :default => "",       :null => false
      t.string   "phone",                :limit => 20,       :default => "",       :null => false
      t.integer  "country",                                  :default => 500,      :null => false
      t.datetime "date_added",                                                     :null => false
      t.text     "subcategories",        :limit => 16777215
      t.string   "status",               :limit => 10,       :default => "active", :null => false
      t.integer  "serviceawards",                            :default => 0,        :null => false
      t.integer  "productawards",                            :default => 0,        :null => false
      t.integer  "servicesold",                              :default => 0,        :null => false
      t.integer  "productsold",                              :default => 0,        :null => false
      t.float    "rating",                                   :default => 0.0,      :null => false
      t.integer  "score",                                    :default => 0,        :null => false
      t.float    "feedback",                                 :default => 0.0,      :null => false
      t.integer  "bidstoday",                                :default => 0,        :null => false
      t.integer  "bidsthismonth",                            :default => 0,        :null => false
      t.integer  "auctiondelists",                           :default => 0,        :null => false
      t.integer  "bidretracts",                              :default => 0,        :null => false
      t.datetime "lastseen",                                                       :null => false
      t.date     "dob",                                                            :null => false
      t.string   "rid",                  :limit => 10,       :default => "",       :null => false
      t.string   "account_number",       :limit => 25,       :default => "",       :null => false
      t.float    "available_balance",    :limit => 17,       :default => 0.0,      :null => false
      t.float    "total_balance",        :limit => 17,       :default => 0.0,      :null => false
      t.float    "income_reported",      :limit => 17,       :default => 0.0,      :null => false
      t.float    "income_spent",         :limit => 17,       :default => 0.0,      :null => false
      t.string   "startpage",            :limit => 250,      :default => "main",   :null => false
      t.integer  "styleid",                                                        :null => false
      t.integer  "project_distance",                         :default => 1,        :null => false
      t.integer  "currency_calculation",                     :default => 1,        :null => false
      t.integer  "languageid",                                                     :null => false
      t.integer  "currencyid",                                                     :null => false
      t.string   "timezone",             :limit => 250,                            :null => false
      t.integer  "notifyservices",                                                 :null => false
      t.integer  "notifyproducts",                                                 :null => false
      t.text     "notifyservicescats",   :limit => 16777215
      t.text     "notifyproductscats",   :limit => 16777215
      t.date     "lastemailservicecats",                                           :null => false
      t.date     "lastemailproductcats",                                           :null => false
      t.integer  "displayprofile",                                                 :null => false
      t.integer  "emailnotify",                                                    :null => false
      t.integer  "displayfinancials",                                              :null => false
      t.string   "vatnumber",            :limit => 250,                            :null => false
      t.string   "regnumber",            :limit => 250,                            :null => false
      t.string   "dnbnumber",            :limit => 250,                            :null => false
      t.string   "companyname",          :limit => 100,                            :null => false
      t.integer  "usecompanyname",                                                 :null => false
      t.integer  "timeonsite",                                                     :null => false
      t.integer  "daysonsite",                                                     :null => false
      t.integer  "isadmin",                                  :default => 0,        :null => false
      t.text     "permissions",          :limit => 16777215
      t.text     "searchoptions",        :limit => 16777215
      t.float    "rateperhour",          :limit => 10,       :default => 0.0,      :null => false
      t.text     "profilevideourl",      :limit => 16777215
      t.text     "profileintro",         :limit => 16777215
      t.string   "gender",               :limit => 6,        :default => "",       :null => false
      t.string   "freelancing",          :limit => 10,       :default => "",       :null => false
      t.integer  "autopayment",                              :default => 1,        :null => false
      t.integer  "posthtml",                                 :default => 0,        :null => false
      t.text     "username_history",     :limit => 16777215
      t.datetime "password_lastchanged",                                           :null => false
      t.integer  "role",                                     :default => 0,        :null => false
      t.integer  "store",                                    :default => 0,        :null => false
      t.integer  "store_pay",                                :default => 0,        :null => false
    end

    add_index "ilance_users", ["city"], :name => "city"
    add_index "ilance_users", ["country"], :name => "country"
    add_index "ilance_users", ["email"], :name => "email"
    add_index "ilance_users", ["first_name"], :name => "first_name"
    add_index "ilance_users", ["freelancing"], :name => "freelancing"
    add_index "ilance_users", ["gender"], :name => "gender"
    add_index "ilance_users", ["last_name"], :name => "last_name"
    add_index "ilance_users", ["rating"], :name => "rating"
    add_index "ilance_users", ["score"], :name => "score"
    add_index "ilance_users", ["serviceawards"], :name => "serviceawards"
    add_index "ilance_users", ["state"], :name => "state"
    add_index "ilance_users", ["status"], :name => "status"
    add_index "ilance_users", ["username"], :name => "username"
    add_index "ilance_users", ["zip_code"], :name => "zip_code"
  end

  def down
    drop_table :ilance_users
  end
end
