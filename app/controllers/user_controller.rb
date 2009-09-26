class UserController < ApplicationController
	protect_from_forgery :only => [:logout]

  def authenticate
    u = User.find :first, :conditions => {:name => params[:user][:name], :password => params[:user][:password]}

    if u.nil?
      flash[:errors] = params[:user][:name] + " " + params[:user][:password]
      redirect_to :action => :login
    else
      current_user = u
      redirect_to :action => :login # this will change to be the main page
    end
  end

  def login
  end

  def logout
    current_user = nil
    redirect_to :action => :login
  end
end
