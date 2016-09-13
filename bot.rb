require 'rubygems'
require 'dotenv'
require 'twitter'
Dotenv.load

class Bot

  def twit
    Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.access_token = ENV['ACESSS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end
  end

  def search
    first_res = twit.search("\"I love space\" -parents -dad -wars -stuff -#freecodefriday -mountain -some -safe -jam -bun -buns").take(3)
    
    @search_res = first_res
  end

  def retweet
    search
    @search_res.each do |tweet|
      begin
        twit.retweet(tweet)
      rescue Twitter::Error
        next
      end
    end
    print "Done retweeting"
  end

end

Bot.new.retweet
