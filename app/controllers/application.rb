# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '64867df5df3efef6700f18264fa34fe9'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  filter_parameter_logging :password

  def current_user
    session[:user]
  end

  def login_required
    puts "User: #{session[:user].inspect}"
    if current_user
      return true
    else
      flash[:errors] = 'Please login to continue'
      session[:return_to] = request.request_uri
      redirect_to :controller => :user, :action => :login
      return false
    end
  end

  def redirect_to_stored
    if return_to = session[:return_to]
      session[:return_to] = nil
      redirect_to return_to
      return true
    else
      return false
    end
  end

  def output_session
    p session[:current_user]
  end
end
