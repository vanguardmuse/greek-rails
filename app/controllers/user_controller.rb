class UserController < ApplicationController

  before_filter :login_required, :only => [:new,:create,:logout]
  before_filter :admin_required, :only => [:new,:create]
  #before_filter :output_session

  def list
    @semesters = Semester.find :all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to :action => :list
    else
      flash[:errors] = "Invalid User"
      redirect_to :action => :new
    end
  end

  def authenticate
    u = User.find :first, :conditions => params[:user]
    if u.nil?
      flash[:errors] = "The username or password entered is incorrect"
      redirect_to :action => :login
    else
      session[:user] = u
      if !(redirect_to_stored)
        redirect_to :action => :list
      end
    end
  end

  def login
  end

  def logout
    session[:user] = nil
    redirect_to :action => :login
  end
end
