class WelcomeController < ApplicationController

  layout "admin"

  def index
    @categories = Category.all
    @competitions = Competition.all
    @events = Event.all
  end

end
