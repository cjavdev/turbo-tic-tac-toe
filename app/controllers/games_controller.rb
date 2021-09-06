class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game
    else
      flash.now[:notice] = @game.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def game_params
    {}
  end
end
