![Space Lovers Bot in action](./SpaceLoversBot.jpg?raw=true "Space Lovers Bot in action")

# SpaceLoversBot

A bot that scrapes tweets for the phrase "I love space" and aggregates a curated list of Twitters most excited and sometimes most filthy space lovers. 

## Bot in the Wild
[Space Lovers Bot](http://twitter.com/spaceloversbot)

### Prerequisities

You'll need:

* Ruby installed on your command line
* A Twitter account with its own phone number
* the bot.rb file

### Installing

To create a similar simple retweet Ruby bot, feel free to clone this repo using your command line. Edit the bot.rb file's search params. Run from your command line using 

```
ruby bot.rb
```
Then refine the results and tweets you're getting!

## Deployment

I deployed this bot to heroku, and used the free Heroku Scheduler add-on to run every hour.

## Built With

* Twitter gem - simplifies search and posting for Ruby bots
* Dotenv gem - simple draws in the variables from Twitter APIs
* Sublime Text

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments
* This bot was built using [LoraineKV](https://github.com/lorainekv)'s [CoinForTechConf](https://github.com/lorainekv/coin-for-tech-conf ) as sample code
* Profile image and banner image for Twitter using [Unsplash](https://unsplash.com) images

