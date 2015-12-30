class WelcomeController < ApplicationController

  layout "admin"

  def index
    @categories = Category.all
    @competitions = Competition.all
    @events = Event.all
    @players = Player.all
    @tickets = Ticket.all
    @venues = Venue.all
  end

end
