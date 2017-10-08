class CreateIlanceBuynowOrders < ActiveRecord::Migration
  def up
    create_table "ilance_buynow_orders", :primary_key => "orderid", :force => true do |t|
      t.integer  "parentid",                                      :default => 0,      :null => false
      t.integer  "project_id",                                    :default => 0,      :null => false
      t.integer  "buyer_id",                                      :default => 0,      :null => false
      t.integer  "owner_id",                                      :default => 0,      :null => false
      t.integer  "invoiceid",                                     :default => 0,      :null => false
      t.integer  "attachid",                                      :default => 0,      :null => false
      t.integer  "qty",                                           :default => 1,      :null => false
      t.float    "amount",                    :limit => 17,       :default => 0.0,    :null => false
      t.float    "salestax",                  :limit => 10,       :default => 0.0,    :null => false
      t.string   "salestaxstate",             :limit => 250,      :default => "",     :null => false
      t.string   "salestaxrate",              :limit => 10,       :default => "0",    :null => false
      t.integer  "salestaxshipping",                              :default => 0,      :null => false
      t.float    "escrowfee",                 :limit => 10,       :default => 0.0,    :null => false
      t.float    "escrowfeebuyer",            :limit => 10,       :default => 0.0,    :null => false
      t.float    "fvf",                       :limit => 10,       :default => 0.0,    :null => false
      t.float    "fvfbuyer",                  :limit => 10,       :default => 0.0,    :null => false
      t.integer  "isescrowfeepaid",                               :default => 0,      :null => false
      t.integer  "isescrowfeebuyerpaid",                          :default => 0,      :null => false
      t.integer  "isfvfpaid",                                     :default => 0,      :null => false
      t.integer  "isfvfbuyerpaid",                                :default => 0,      :null => false
      t.integer  "escrowfeeinvoiceid",                            :default => 0,      :null => false
      t.integer  "escrowfeebuyerinvoiceid",                       :default => 0,      :null => false
      t.integer  "fvfinvoiceid",                                  :default => 0,      :null => false
      t.integer  "fvfbuyerinvoiceid",                             :default => 0,      :null => false
      t.integer  "ship_required",                                 :default => 1,      :null => false
      t.text     "ship_location",             :limit => 16777215
      t.datetime "orderdate",                                                         :null => false
      t.datetime "canceldate",                                                        :null => false
      t.datetime "arrivedate",                                                        :null => false
      t.datetime "paiddate",                                                          :null => false
      t.datetime "releasedate",                                                       :null => false
      t.integer  "winnermarkedaspaid",                            :default => 0,      :null => false
      t.datetime "winnermarkedaspaiddate",                                            :null => false
      t.text     "winnermarkedaspaidmethod",  :limit => 16777215
      t.string   "buyerpaymethod",            :limit => 250,      :default => "",     :null => false
      t.float    "buyershipcost",             :limit => 10,       :default => 0.0,    :null => false
      t.integer  "buyershipperid",                                :default => 0,      :null => false
      t.integer  "sellermarkedasshipped",                         :default => 0,      :null => false
      t.datetime "sellermarkedasshippeddate",                                         :null => false
      t.string   "shiptracknumber",           :limit => 250,      :default => "",     :null => false
      t.integer  "buyerfeedback",                                 :default => 0,      :null => false
      t.integer  "sellerfeedback",                                :default => 0,      :null => false
      t.string   "status",                    :limit => 17,       :default => "paid", :null => false
    end

    add_index "ilance_buynow_orders", ["attachid"], :name => "attachid"
    add_index "ilance_buynow_orders", ["buyer_id"], :name => "buyer_id"
    add_index "ilance_buynow_orders", ["invoiceid"], :name => "invoiceid"
    add_index "ilance_buynow_orders", ["owner_id"], :name => "owner_id"
    add_index "ilance_buynow_orders", ["parentid"], :name => "parentid"
    add_index "ilance_buynow_orders", ["project_id"], :name => "project_id"
    add_index "ilance_buynow_orders", ["status"], :name => "status"
  end

  def down
    drop_table :ilance_buynow_orders
  end
end
