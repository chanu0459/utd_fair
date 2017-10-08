class Project < ActiveRecord::Base
  # attr_accessible :title, :body
  self.table_name = :ilance_projects

  belongs_to :category, foreign_key: "cid"
  belongs_to :user

  def self.report_all_data
    joins(:user).joins(:category).select('ilance_projects.project_title title, username uname, ilance_categories.name cname, ilance_projects.date_added, ilance_projects.description')
  end

  def self.recent_projects
  	report_all_data.order("date_added DESC")
  end

  def self.order_by_category_name_asc
  	report_all_data.order("cname ASC")
  end

  def self.order_by_username_asc
  	report_all_data.order("uname ASC")
  end

  def self.order_by_project_title_asc
  	report_all_data.order("title ASC")
  end

end
