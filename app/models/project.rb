class Project < ActiveRecord::Base
  # attr_accessible :title, :body
  self.table_name = :ilance_projects

  def self.report_all_data
  	joins('left join ilance_users ilu on ilu.user_id = ilance_projects.user_id inner join ilance_categories ilc on ilc.cid = ilance_projects.cid').select('ilance_projects.project_title title, ilu.username uname, ilc.name cname, ilance_projects.date_added, ilance_projects.description, ilance_projects.date_starts, ilance_projects.date_end')
  end

  def self.report_recent_projects
  	report_all_data.order("date_added DESC")
  end

  def self.report_cat_name_asc
  	report_all_data.order("cname ASC")
  end

  def self.report_uname_asc
  	report_all_data.order("uname ASC")
  end

  def self.report_project_title_asc
  	report_all_data.order("title ASC")
  end

end
