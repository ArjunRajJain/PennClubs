class WelcomeController < ApplicationController
  def index
    @club = Club.new
  end
end
