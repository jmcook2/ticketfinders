class PlayersController < ApplicationController

  def show
    @player = Player.find(params[:id])
    @category = Category.find(@player.category_id)
    if params[:comp]
      @competition = Competition.find(params[:comp])
      # Retrieve all events in the given competition
      @all_events = Event.where(competition_id: @competition.id)
      # Return player specific events
      @events = []
      @all_events.each do |event|
        event.players.each do |player|
          if player == @player
            @events << event
          end
        end
      end
    else
      @all_events = Event.all
      @events = []
      @all_events.each do |event|
        event.players.each do |player|
          if @player == player
            @events << event
          end
        end
      end
    end
  end

end
