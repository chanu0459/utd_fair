class CreateIlanceSubscriptionUser < ActiveRecord::Migration
  def up
    create_table "ilance_subscription_user", :force => true do |t|
      t.integer  "subscriptionid",               :default => 1,         :null => false
      t.integer  "user_id",                      :default => -1,        :null => false
      t.string   "paymethod",      :limit => 12, :default => "account", :null => false
      t.datetime "startdate",                                           :null => false
      t.datetime "renewdate",                                           :null => false
      t.integer  "autopayment",                  :default => 1,         :null => false
      t.string   "autorenewal",    :limit => 1,  :default => "1",       :null => false
      t.string   "active",         :limit => 9,  :default => "no",      :null => false
      t.integer  "cancelled",                    :default => 0,         :null => false
      t.integer  "migrateto",                    :default => 0,         :null => false
      t.string   "migratelogic",   :limit => 6,  :default => "none",    :null => false
      t.integer  "recurring",                    :default => 0,         :null => false
      t.integer  "invoiceid",                    :default => 0,         :null => false
      t.integer  "roleid",                       :default => -1,        :null => false
    end

    add_index "ilance_subscription_user", ["active"], :name => "active"
    add_index "ilance_subscription_user", ["invoiceid"], :name => "invoiceid"
    add_index "ilance_subscription_user", ["migratelogic"], :name => "migratelogic"
    add_index "ilance_subscription_user", ["paymethod"], :name => "paymethod"
    add_index "ilance_subscription_user", ["subscriptionid"], :name => "subscriptionid"
    add_index "ilance_subscription_user", ["user_id"], :name => "user_id"
  end

  def down
    drop_table :ilance_subscription_user
  end
end
