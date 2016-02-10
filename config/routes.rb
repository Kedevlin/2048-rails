Rails.application.routes.draw do

  root "site#index"

  # sessions routes
  get "/auth/github/callback", to: "sessions#create", as: :login
  delete "/logout", to: 'sessions#destroy', as: :logout

  # api routes
  get '/leaderboard' => 'site#leaderboard'
  post '/save-game' => 'users#save_game'
  get '/all-games' => 'users#load_all_games'
  get '/load-game/:id' => 'users#load_game'
  get '/best-score' => 'users#best_score'
  post '/best-score' => 'users#new_best_score'

end
