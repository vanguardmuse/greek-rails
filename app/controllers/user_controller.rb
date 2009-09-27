class UserController < ApplicationController
	protect_from_forgery :only => [:logout]

  def list
    @semesters = Semester.find :all
  end

  def show
    @user = User.find(params[:id])
  end

  def authenticate
    puts @user
    u = User.find :first, :conditions => {:name => params[:user][:name], :password => params[:user][:password]}

    if u.nil?
      flash[:errors] = "The username or password entered is incorrect"
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
