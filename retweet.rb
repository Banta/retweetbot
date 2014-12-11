require "rubygems"
require "twitter"

class RetweetBot
	#Twitter configuration
	client = Twitter::REST::Client.new do |config|
  		config.consumer_key        = "bFSjaZJSnQW3Ez9TuYsjfHwY0"
  		config.consumer_secret     = "4tkq4uzU8uDi067guwLFrDMXJaH544DCLmR7KKYwwMddaMWBdw"
  		config.access_token        = "111558553-CcJOxpCXjoL8wUhNmRbo17icM4uGSbRRTU1LHdQv"
  		config.access_token_secret = "HXS9yCyoh6AKRfu0baJtyGX2awiNiutrRfBE0PNLyKmIx"
	end
	
	#Retweet tweets with this topic
	topic = "nairuby"

	tweets.collect do |tweet|
		client.retweet(tweet)
	end
end
