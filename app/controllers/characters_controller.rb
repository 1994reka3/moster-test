class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update]

  def index
    @characters = Character.all
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
    if @character.update(post_params)
      redirect_to character_path
    else
      redirect_to edit_character_path
    end
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def post_params
    params.require(:character).permit(:character_exp)
  end
end
