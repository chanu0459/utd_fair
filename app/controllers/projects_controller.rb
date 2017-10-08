class ProjectsController < ApplicationController
  
  def index
		@per_page = params[:per_page] || 2
		@page = params[:page].to_i
		@order_hash = ['Recent Projects', 'Order By Category Name ASC', 'Order By Username Asc', 'Order By Project Title Asc']
  	@result = Project.send((params[:sort_method] || "Recent Projects").to_s.parameterize.underscore)
		@total_pages = @result.count / 2
		@result = @result.limit(@per_page.to_i).offset( @per_page.to_i * @page.to_i)
  end

end
