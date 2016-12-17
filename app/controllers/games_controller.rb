class GamesController < ApplicationController
  def index
    @games = Game.order(points: :desc)
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if game.save
      redirect_to @game
    else
      render 'new'
    end
  end

  def game_params
    params.require(:game).permit(:time, :distance, :points)
  end
end
