class TweetsController < ApplicationController

  before_action :set_tweet, only: [:edit, :update, :show, :destroy]

  def home
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    respond_to do |format|
      if (@tweet.save)
        format.html { redirect_to "", notice: 'Bark created' }
      else
        format.html { redirect_to "", notice: "Error: Bark Not Saved."}
      end
    end
  end

  def edit
  end

  def show
  end

  def update

    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to tweet_path(@tweet.id), notice: "success"}
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @tweet.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Bark was deleted'}
    end
  end

 private

 def set_tweet
   @tweet = Tweet.find(params[:id])
 end

 def tweet_params
    params.require(:tweet).permit(:message, :user_id)
  end
end
