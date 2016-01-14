class HomeController < ApplicationController

  def index
    # alternatively use 'take' for random events
    @events = Event.last(6)
  end

end
