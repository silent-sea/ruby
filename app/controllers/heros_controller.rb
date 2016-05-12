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

    @hero.user_id = current_user.id

    if @hero.save
      redirect_to @hero
    else
      render 'new'
    end
  end

  def destroy
    @hero = Hero.find(params[:id])
    @hero.destroy

    redirect_to heros_path
  end

  private
  def hero_params
    params.require(:hero).permit(:name)
  end
end
