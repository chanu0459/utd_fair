class CreateIlanceProjects < ActiveRecord::Migration
  def up
    create_table "ilance_projects", :force => true do |t|
      t.integer  "project_id",                                  :default => 0,         :null => false
      t.integer  "escrow_id",                                   :default => 0,         :null => false
      t.integer  "cid",                                         :default => 0,         :null => false
      t.text     "description",             :limit => 16777215
      t.string   "ishtml",                  :limit => 1,        :default => "0",       :null => false
      t.text     "description_videourl",    :limit => 16777215
      t.datetime "date_added",                                                         :null => false
      t.datetime "date_starts",                                                        :null => false
      t.datetime "date_end",                                                           :null => false
      t.integer  "gtc",                                         :default => 0,         :null => false
      t.datetime "gtc_cancelled",                                                      :null => false
      t.integer  "user_id",                                     :default => 0,         :null => false
      t.integer  "visible",                                     :default => 0,         :null => false
      t.integer  "views",                                       :default => 0,         :null => false
      t.string   "project_title",           :limit => 250,      :default => "",        :null => false
      t.integer  "bids",                                        :default => 0,         :null => false
      t.integer  "bidsdeclined",                                :default => 0,         :null => false
      t.integer  "bidsretracted",                               :default => 0,         :null => false
      t.integer  "bidsshortlisted",                             :default => 0,         :null => false
      t.string   "budgetgroup",             :limit => 30,       :default => "",        :null => false
      t.text     "additional_info",         :limit => 16777215
      t.string   "status",                  :limit => 17,       :default => "draft",   :null => false
      t.datetime "close_date",                                                         :null => false
      t.string   "transfertype",            :limit => 6,        :default => "userid",  :null => false
      t.integer  "transfer_to_userid",                          :default => 0,         :null => false
      t.integer  "transfer_from_userid",                        :default => 0,         :null => false
      t.string   "transfer_to_email",       :limit => 50,       :default => "",        :null => false
      t.string   "transfer_status",         :limit => 8,        :default => "",        :null => false
      t.string   "transfer_code",           :limit => 32,       :default => "",        :null => false
      t.string   "project_details",         :limit => 11,       :default => "public",  :null => false
      t.string   "project_type",            :limit => 7,        :default => "reverse", :null => false
      t.string   "project_state",           :limit => 7,        :default => "service", :null => false
      t.string   "bid_details",             :limit => 6,        :default => "open",    :null => false
      t.string   "filter_rating",           :limit => 1,        :default => "0",       :null => false
      t.string   "filter_country",          :limit => 1,        :default => "0",       :null => false
      t.string   "filter_state",            :limit => 1,        :default => "0",       :null => false
      t.string   "filter_city",             :limit => 1,        :default => "0",       :null => false
      t.string   "filter_zip",              :limit => 1,        :default => "0",       :null => false
      t.string   "filter_underage",         :limit => 1,        :default => "0",       :null => false
      t.string   "filter_businessnumber",   :limit => 1,        :default => "0",       :null => false
      t.string   "filter_bidtype",          :limit => 1,        :default => "0",       :null => false
      t.string   "filter_budget",           :limit => 1,        :default => "0",       :null => false
      t.integer  "filter_escrow",                               :default => 0,         :null => false
      t.integer  "filter_gateway",                              :default => 0,         :null => false
      t.integer  "filter_ccgateway",                            :default => 0,         :null => false
      t.integer  "filter_offline",                              :default => 0,         :null => false
      t.string   "filter_publicboard",      :limit => 1,        :default => "0",       :null => false
      t.string   "filtered_rating",         :limit => 1,        :default => "1",       :null => false
      t.string   "filtered_country",        :limit => 50,       :default => "",        :null => false
      t.string   "filtered_state",          :limit => 50,       :default => "",        :null => false
      t.string   "filtered_city",           :limit => 20,       :default => "",        :null => false
      t.string   "filtered_zip",            :limit => 10,       :default => "",        :null => false
      t.integer  "filter_bidlimit",                             :default => 0,         :null => false
      t.integer  "filtered_bidlimit",                           :default => 10,        :null => false
      t.string   "filtered_bidtype",        :limit => 7,        :default => "entire",  :null => false
      t.string   "filtered_bidtypecustom",  :limit => 250,      :default => "",        :null => false
      t.integer  "filtered_budgetid",                           :default => 0,         :null => false
      t.string   "filtered_auctiontype",    :limit => 10,       :default => "regular", :null => false
      t.string   "classified_phone",        :limit => 32,       :default => "",        :null => false
      t.float    "classified_price",        :limit => 17,       :default => 0.0,       :null => false
      t.integer  "urgent",                                      :default => 0,         :null => false
      t.integer  "buynow",                                      :default => 0,         :null => false
      t.float    "buynow_price",            :limit => 17,       :default => 0.0,       :null => false
      t.integer  "buynow_qty",                                  :default => 0,         :null => false
      t.integer  "buynow_qty_lot",                              :default => 0,         :null => false
      t.integer  "items_in_lot",            :limit => 3,        :default => 0,         :null => false
      t.integer  "buynow_purchases",                            :default => 0,         :null => false
      t.integer  "reserve",                                     :default => 0,         :null => false
      t.float    "reserve_price",           :limit => 17,       :default => 0.0,       :null => false
      t.integer  "featured",                                    :default => 0,         :null => false
      t.datetime "featured_date",                                                      :null => false
      t.integer  "featured_searchresults",                      :default => 0,         :null => false
      t.integer  "highlite",                                    :default => 0,         :null => false
      t.integer  "bold",                                        :default => 0,         :null => false
      t.integer  "autorelist",                                  :default => 0,         :null => false
      t.datetime "autorelist_date",                                                    :null => false
      t.float    "startprice",              :limit => 17,       :default => 0.0,       :null => false
      t.float    "retailprice",             :limit => 10,       :default => 0.0,       :null => false
      t.integer  "uniquebidcount",                              :default => 0,         :null => false
      t.text     "paymethod",               :limit => 16777215
      t.text     "paymethodcc",             :limit => 16777215
      t.text     "paymethodoptions",        :limit => 16777215
      t.text     "paymethodoptionsemail",   :limit => 16777215
      t.string   "keywords",                :limit => 250,      :default => "",        :null => false
      t.float    "currentprice",            :limit => 17,       :default => 0.0,       :null => false
      t.float    "insertionfee",            :limit => 10,       :default => 0.0,       :null => false
      t.float    "enhancementfee",          :limit => 10,       :default => 0.0,       :null => false
      t.float    "fvf",                     :limit => 10,       :default => 0.0,       :null => false
      t.integer  "isfvfpaid",                                   :default => 0,         :null => false
      t.integer  "isifpaid",                                    :default => 0,         :null => false
      t.integer  "isenhancementfeepaid",                        :default => 0,         :null => false
      t.integer  "ifinvoiceid",                                 :default => 0,         :null => false
      t.integer  "enhancementfeeinvoiceid",                     :default => 0,         :null => false
      t.integer  "fvfinvoiceid",                                :default => 0,         :null => false
      t.integer  "returnaccepted",                              :default => 0,         :null => false
      t.string   "returnwithin",            :limit => 2,        :default => "0",       :null => false
      t.string   "returngivenas",           :limit => 9,        :default => "none",    :null => false
      t.string   "returnshippaidby",        :limit => 6,        :default => "none",    :null => false
      t.text     "returnpolicy",            :limit => 16777215
      t.integer  "buyerfeedback",                               :default => 0,         :null => false
      t.integer  "sellerfeedback",                              :default => 0,         :null => false
      t.integer  "hasimage",                                    :default => 0,         :null => false
      t.integer  "hasimageslideshow",                           :default => 0,         :null => false
      t.integer  "hasdigitalfile",                              :default => 0,         :null => false
      t.integer  "haswinner",                                   :default => 0,         :null => false
      t.integer  "hasbuynowwinner",                             :default => 0,         :null => false
      t.integer  "winner_user_id",                              :default => 0,         :null => false
      t.integer  "donation",                                    :default => 0,         :null => false
      t.integer  "charityid",                                   :default => 0,         :null => false
      t.integer  "donationpercentage",                          :default => 0,         :null => false
      t.integer  "donermarkedaspaid",                           :default => 0,         :null => false
      t.datetime "donermarkedaspaiddate",                                              :null => false
      t.integer  "donationinvoiceid",                           :default => 0,         :null => false
      t.integer  "currencyid",                                  :default => 0,         :null => false
      t.integer  "countryid",                                   :default => 0,         :null => false
      t.string   "country",                 :limit => 250,      :default => "",        :null => false
      t.string   "state",                   :limit => 250,      :default => "",        :null => false
      t.string   "city",                    :limit => 250,      :default => "",        :null => false
      t.string   "zipcode",                 :limit => 50,       :default => "",        :null => false
      t.string   "sku",                     :limit => 250,      :default => "",        :null => false
      t.string   "upc",                     :limit => 250,      :default => "",        :null => false
      t.string   "ean",                     :limit => 250,      :default => "",        :null => false
      t.string   "isbn10",                  :limit => 250,      :default => "",        :null => false
      t.string   "isbn13",                  :limit => 250,      :default => "",        :null => false
      t.string   "partnumber",              :limit => 250,      :default => "",        :null => false
      t.string   "modelnumber",             :limit => 250,      :default => "",        :null => false
      t.string   "salestaxstate",           :limit => 250,      :default => "",        :null => false
      t.string   "salestaxrate",            :limit => 10,       :default => "0",       :null => false
      t.integer  "salestaxentirecountry",                       :default => 0,         :null => false
      t.integer  "salestaxshipping",                            :default => 0,         :null => false
      t.integer  "countdownresets",                             :default => 0,         :null => false
      t.integer  "bulkid",                                      :default => 0,         :null => false
      t.integer  "updateid",                                    :default => 1,         :null => false
      t.integer  "storeid",                                     :default => 0,         :null => false
      t.text     "itemcondition",           :limit => 16777215
      t.text     "imageurl",                :limit => 16777215
      t.integer  "imageurl_attachid",                           :default => 0,         :null => false
      t.integer  "download_attachid",                           :default => 0,         :null => false
      t.integer  "itemstatus",                                  :default => 1,         :null => false
      t.integer  "storecid",                                    :default => 0,         :null => false
      t.string   "tags",                    :limit => 100,                             :null => false
      t.string   "genre",                   :limit => 100,                             :null => false
    end

    add_index "ilance_projects", ["charityid"], :name => "charityid"
    add_index "ilance_projects", ["cid"], :name => "cid"
    add_index "ilance_projects", ["countryid"], :name => "countryid"
    add_index "ilance_projects", ["hasdigitalfile"], :name => "hasdigitalfile"
    add_index "ilance_projects", ["hasimage"], :name => "hasimage"
    add_index "ilance_projects", ["hasimageslideshow"], :name => "hasimageslideshow"
    add_index "ilance_projects", ["isbn10"], :name => "isbn10"
    add_index "ilance_projects", ["isbn13"], :name => "isbn13"
    add_index "ilance_projects", ["modelnumber"], :name => "modelnumber"
    add_index "ilance_projects", ["partnumber"], :name => "partnumber"
    add_index "ilance_projects", ["project_details"], :name => "project_details"
    add_index "ilance_projects", ["project_id"], :name => "project_id"
    add_index "ilance_projects", ["project_state"], :name => "project_state"
    add_index "ilance_projects", ["project_title"], :name => "project_title"
    add_index "ilance_projects", ["project_type"], :name => "project_type"
    add_index "ilance_projects", ["sku"], :name => "sku"
    add_index "ilance_projects", ["status"], :name => "status"
    add_index "ilance_projects", ["zipcode"], :name => "zipcode"
  end

  def down
    drop_table :ilance_projects
  end
end
