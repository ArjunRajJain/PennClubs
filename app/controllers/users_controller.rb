class UsersController < ApplicationController
  before_filter :authenticate_user!
  # GET /users
  # GET /users.json

  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    @allPreferences = ["Music","Art","Dance","Choir/Singing","Varsity Sports","Club Sport"]
      respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    @allPreferences = ["Music","Art","Dance","Choir/Singing","Varsity Sports","Club Sport"]
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    @allPreferences = ["Music","Art","Dance","Choir/Singing","Varsity Sports","Club Sport"]
    respond_to do |format|
      if @user.save
        params[:preferences].each do |pref|
            Preference.new(name: pref , user_id: @user.id).save
        end
        format.html { redirect_to :clubs, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])
    @allPreferences = ["Music","Art","Dance","Choir/Singing","Varsity Sports","Club Sport"]
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
