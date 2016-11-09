class LikesController < ApplicationController

  before_action :set_tweet, :authenticate_user!

  def create
    @tweet.likes.where(user_id: current_user.id).first_or_create

    respond_to do |format|
      format.html { redirect_to request.referrer}
    end
  end

  def destroy
    @tweet.likes.where(user_id: current_user.id).destroy_all
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end
