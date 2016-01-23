class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
    @category = Category.find(@event.category_id)
    @category_description = Category.find(@event.category_id).description
    if params[:comp]
      @competition = Competition.find(params[:comp])
    end
    if params[:player]
      @player = Player.find(params[:player])
    end
  end

end
