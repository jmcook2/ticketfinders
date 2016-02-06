class CompetitionsController < ApplicationController

  def show
    @competition = Competition.find(params[:id])
    @category = Category.find(@competition.category_id)
    @events = Event.where(competition_id: @competition.id)

    @tmp = []
    @events.each do |event|
      event.players.each do |player|
        @tmp << player unless @tmp.include?(player)
      end
    end
    @players = @tmp.sort { |a,b| a.name <=> b.name }
  end

end
