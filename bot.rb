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
    first_search = twit.search("I love stars OR I love space OR I love the moon")
    @search_results = first_search
  end

  def retweet
    search
    @search_results.each do |tweet|
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


