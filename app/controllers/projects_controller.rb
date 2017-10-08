class ProjectsController < ApplicationController
  
  def index
		@per_page = params[:per_page] || 2
		@page = params[:page] || 0
		@order_hash = ['Recent Projects', 'Order By Category Name ASC', 'Order By Username Asc', 'Order By Project Title Asc']
  	@selected_order = (params[:sort_method].present? && @order_hash.include?(params[:sort_method])) ? params[:sort_method].parameterize.underscore : 'Recent Projects'.parameterize.underscore
  	@result = Project.send(@selected_order)
		@total_pages = @result.count / 2
		@result = @result.limit(@per_page.to_i).offset( @per_page.to_i * @page.to_i)
  end

end
