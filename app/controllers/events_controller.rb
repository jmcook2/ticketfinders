class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
    @category = Category.find(@event.category_id)
    @category_description = Category.find(@event.category_id).description
    gon.latitude = @event.venue.latitude
    gon.longitude = @event.venue.longitude
    if params[:comp]
      @competition = Competition.find(params[:comp])
    elsif @event.competition_id != nil
      @competition = Competition.find(@event.competition_id)
    end
    if params[:player]
      @player = Player.find(params[:player])
    end
  end

end
