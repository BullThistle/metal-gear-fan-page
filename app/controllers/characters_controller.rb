class CharactersController < ApplicationController
  def index
    @characters = Character.all
    render :index
  end
  def show
    @character = Character.find(params[:id])
    render :show
  end
  def new
    @character = Character.new
    render :new
  end
  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to  characters_path
    else
      render :new
    end
  end
  def edit
    @character = Character.find(params[:id])
    render :edit
  end
  def update
    @character= Character.find(params[:id])
    if @character.update(character_params)
      redirect_to characters_path
    else
      render :edit
    end
  end
  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path
  end

private
  def character_params
    params.require(:character).permit(:char_name, :first_game, :bio, :char_pic)
  end
end
