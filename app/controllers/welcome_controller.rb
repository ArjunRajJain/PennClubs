class WelcomeController < ApplicationController
  def index
    @user = current_user
    @newUser = User.new
    @allPreferences = ["Music","Art","Dance","Choir/Singing","Varsity Sports","Club Sport"]
  	if user_signed_in? 
  		redirect_to :clubs
  	end
  end
end