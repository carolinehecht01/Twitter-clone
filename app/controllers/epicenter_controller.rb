class EpicenterController < ApplicationController
  def feed
  	@following_tweets = []
if current_user
  	Tweet.all.each do |tweet|
  		if current_user.following.include?(tweet.user.id) || current_user.id == tweet.user.id
  		@following_tweets.push(tweet)
  		end
  	end
  end
end

  def show_user
  end

  def now_following
  end

  def unfollow
  end
end
