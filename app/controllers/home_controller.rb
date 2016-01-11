class HomeController < ApplicationController

  def index
    # alternatively use 'take' for random events
    @events = Event.first(6)
  end

end
