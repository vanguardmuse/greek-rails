class EventController < ApplicationController
  def list
    @events = Event.find(:all,:order => "date", :conditions => ["date > :today",{:today => Time.now}])
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
