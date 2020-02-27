Rails.application.routes.draw do
  root to: 'twitter#index'

  get '/get_tweet', to: 'twitter#get_tweets'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
