class HerosController < ApplicationController
  def index
    @heros = Hero.all
  end

  def show
    @hero = Hero.find(params[:id])
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)

    if @hero.save
      redirect_to @hero
    else
      render 'new'
    end
  end

  private
  def hero_params
    params.require(:hero).permit(:name)
  end
end
