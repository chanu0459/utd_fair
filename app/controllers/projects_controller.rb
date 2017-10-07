class ProjectsController < ApplicationController
  
  def index
  	@order_hash = {1 => {'method_name' => 'report_recent_projects', 'name' => 'Recent Projects' }, 2 => { "method_name" => 'report_cat_name_asc' , "name" => "Order By Category Name ASC"}, 3 => {'method_name' => 'report_uname_asc', "name" => "Order By Username Asc"}, 4 => {'method_name' => 'report_project_title_asc', "name" => "Order By Project Title Asc"}}
  	@selected_order = (params[:sort_method].present? && @order_hash.keys.include?(params[:sort_method].to_i)) ? params[:sort_method].to_i : 1
  	@result = Project.send(@order_hash[@selected_order]['method_name'])
  	# render :json => @result
  end

end
