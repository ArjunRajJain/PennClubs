class WelcomeController < ApplicationController
  def index
    @user = User.new
    @allPreferences = ["Music","Art","Dance","Choir/Singing","Varsity Sports","Club Sport"]
  end
end
