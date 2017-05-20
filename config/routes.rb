Rails.application.routes.draw do

  root 'home#index'

  get '/auth/facebook', as: 'facebook_login'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/:industry_slug', to: 'industries#show', as: 'industry'
end
