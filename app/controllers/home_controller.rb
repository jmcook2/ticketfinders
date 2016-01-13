class HomeController < ApplicationController

  def index
    # alternatively use 'take' for random events
    @events = Event.take(6)
  end

end
