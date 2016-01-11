class HomeController < ApplicationController

  def index
    @events = Event.first(6)
  end

end
