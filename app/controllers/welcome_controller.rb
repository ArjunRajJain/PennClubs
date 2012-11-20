class WelcomeController < ApplicationController
  def index
    @user = current_user
    @allPreferences = ["Music","Art","Dance","Choir/Singing","Varsity Sports","Club Sport"]
  end
end