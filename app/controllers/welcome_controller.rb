class WelcomeController < ApplicationController
  def index
  	if user_signed_in?
    	@user = current_user
    else
    	@user = User.new
    end
    @allPreferences = ["Music","Art","Dance","Choir/Singing","Varsity Sports","Club Sport"]
  	if user_signed_in? 
  		redirect_to :clubs
  	end
  end
end