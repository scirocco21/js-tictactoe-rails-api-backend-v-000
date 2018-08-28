class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show, :update]

  def create
    @game = Game.create(game_params)
    render json: @game, status: 200
  end

  def show
    render json: @game, status: 200
  end

  def update
    @game.update(game_params)
    render json: @game, status: 200
  end

  def index
    @games = Game.all
    render json: @games, status: 200
  end

  private
  def game_params
    # tests are passing in array as attribute, which needs to be explicitly whitelisted
    params.permit(state: [])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
