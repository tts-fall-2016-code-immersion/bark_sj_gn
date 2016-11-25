class PagesController < ApplicationController
  def index
    render('index')
  end

  def home
    @tweets = Tweet.all
    @newTweet = Tweet.new
  end

  def profile
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice=> "User not found!"
  end

  @tweets = Tweet.all.where("user_id = ?" , User.find_by_username(params[:id]).id)
  @newTweet = Tweet.new
end

  def explore
    @tweets = Tweet.all
    @newTweet = Tweet.new
    # @toFollow - User.all.last(5)
  end
end
