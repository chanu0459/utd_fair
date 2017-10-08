class CreateIlanceCategories < ActiveRecord::Migration
  def up
    create_table "ilance_categories", :primary_key => "cid", :force => true do |t|
      t.string   "name"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end
  end

  def down
    drop_table :ilance_categories
  end
end
