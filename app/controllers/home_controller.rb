class HomeController < ApplicationController

  def index
    @sports = Event.where(sports: true).take(6)
  end

end
