class FeedsController < ApplicationController
  require "feed_tools"

  def user_data
    @feed = FeedTools::Feed.open(params[:feed_url])
    # You can first test it with a static feed url like this
    #@feed = FeedTools::Feed.open('http://www.sphred.com/combined_feed   end

end
