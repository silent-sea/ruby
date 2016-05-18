class WelcomeController < ApplicationController
  def index
    @hero = Hero.find_by user_id: current_user.id
  end

  def show

  end
end
