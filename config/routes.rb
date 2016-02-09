Rails.application.routes.draw do

  root "site#index"

  # sessions routes
  get "/auth/github/callback", to: "sessions#create", as: :login
  delete "/logout", to: 'sessions#destroy', as: :logout

  # api routes
  get '/leaderboard' => 'site#leaderboard'
  post '/save-game' => 'site#save_game'
  get '/all-games' => 'site#load_all_games'
  get '/load-game/:id' => 'site#load_game'


end
