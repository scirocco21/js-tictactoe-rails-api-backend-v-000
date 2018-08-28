class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.create(params)
    render json: @game, status: 200,
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def update
    @game = Game.find(params[:id])
    @game.update(params)
    render json: @game, status: 200
  end

  def index
    @games = Game.all
    render json: @games, status: 200
  end

end
