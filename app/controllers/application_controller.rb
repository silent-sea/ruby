class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  #before_filter :get_hero

  #def get_hero
  #  if user_signed_in?
  #    @hero = Hero.where(:user_id => current_user.id)
  #  end
  #end
end
