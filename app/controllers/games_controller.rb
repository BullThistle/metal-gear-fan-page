class GamesController < ApplicationController
  def index
    @games = Game.all
    render :index
  end
  def show
    @game = Game.find(params[:id])
    render :show
  end
  def new
    @game = Game.new
    render :new
  end
  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to  games_path
    else
      render :new
    end
  end
  def edit
    @game = Game.find(params[:id])
    render :edit
  end
  def update
    @game= Game.find(params[:id])
    if @game.update(game_params)
      redirect_to games_path
    else
      render :edit
    end
  end
  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

private
  def game_params
    params.require(:game).permit(:name, :release, :gameplay, :story, :development, :description)
  end
end
