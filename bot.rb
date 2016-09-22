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
    #Change search params below
    first_res = twit.search("\"I love space\" -parents -dad -wars -stuff -#freecodefriday -mountain -some -safe -jam -bun -buns -dandy -passengers").take(3)
    
    @search_res = first_res
  end

  def retweet
    #Runs our search
    search
    #for each search result, use the twitter gem to retweet
    @search_res.each do |tweet|
      begin
        twit.retweet(tweet)
      rescue Twitter::Error
        next
      end
    end
    #lets us know the ritual is complete
    print "Done retweeting"
  end

end

#create a new instance of Bot and run retweet command
Bot.new.retweet


#now you can easily keep track of other users who love what you love
#or hate what you hate I suppose