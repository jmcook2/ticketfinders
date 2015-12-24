class WelcomeController < ApplicationController

  def index
    @categories = Category.all
    @competitions = Competition.all
    @events = Event.all
  end

end
