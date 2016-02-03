class TicketsController < ApplicationController

  def show
    @ticket = Ticket.find(params[:id])
    @event = @ticket.event
  end

end
