class EventController < ApplicationController
  def list
    @events = Event.find(:all)
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
