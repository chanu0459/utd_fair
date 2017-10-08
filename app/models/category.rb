class Category < ActiveRecord::Base
   attr_accessible :cid, :name
  self.table_name = :ilance_categories

end
