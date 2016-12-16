class TweetsController < ApplicationController


  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    respond_to do |format|
        if (@tweet.save)
          f.html { redirect_to "", notice: "Post created!" }
            else
                f.html { redirect_to "", notice: "Error: Post Not Saved." }
            end
        end
    end

     private
     def tweet_params
        params.require(:tweet).permit(:user_id, :content)
    end

end
