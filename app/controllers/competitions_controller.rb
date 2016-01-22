class CompetitionsController < ApplicationController

  def show
    @competition = Competition.find(params[:id])
    @category = Category.find(@competition.category_id)
    @events = Event.where(competition_id: @competition.id)

    @players = []
    @events.each do |event|
      event.players.each do |player|
        @players << player
      end
    end
  end

end
