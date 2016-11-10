class ProfilesController < ApplicationController

  # In the show action...
  # lookup a specific user (based on their ID)
  # assign that object to the @user instance variable

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end
end
