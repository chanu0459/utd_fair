class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user, :except => [:login, :login_attempt]

  protected 
  	# Method to check if the user_id session is available. 
  	# If so, it assigns the user object
  	# If not, redirect to  login
	def authenticate_user
	  if session[:user_id]
	     # set current user object to @current_user object variable
	    @current_user = User.find session[:user_id] 
	    return true	
	  else
	    redirect_to(:controller => 'sessions', :action => 'login')
	    return false
	  end
	end

	def save_login_state
	  if session[:user_id]
	    redirect_to(:controller => 'sessions', :action => 'home')
	    return false
	  else
	    return true
	  end
	end
end
