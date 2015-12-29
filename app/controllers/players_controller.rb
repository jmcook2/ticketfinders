class PlayersController < ApplicationController

  layout "admin"

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def edit
    @player = Player.find(params[:id])
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      flash[:notice] = "Player successfully created"
      redirect_to @player
    else
      render 'new'
    end
  end

  def update
    @player = Player.find(params[:id])

    if @player.update(player_params)
      flash[:notice] = "Player successfully updated"
      redirect_to @player
    else
      render 'edit'
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    flash[:notice] = "Player successfully deleted"
    redirect_to players_path
  end

  private

  def player_params
    params.require(:player).permit(:name, :category_id)
  end

end
