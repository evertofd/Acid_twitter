require 'twitter'

class TwitterController < ApplicationController

  def index
  end

  def get_tweets
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "lrPEXcHFvU7r61ZIApGaDHNI9"
      config.consumer_secret     = "SOCczmD4XO7VzBQxdGQq2JY9CHltwNaw54sLL78A6zLRwQT3i4"
      config.access_token        = "129608042-1ZXQwVVzTDsHThVOF0SKh2l9RfF9saUJSdyGnQL6"
      config.access_token_secret = "Df273x4NQIYYx0gP2ojc6hFVzbfKxlkGR3fIocs2akg5M"
    end

    @result = client.search('#CHILEDESPERTO').take(50).to_json

    render json: @result
  end
end
