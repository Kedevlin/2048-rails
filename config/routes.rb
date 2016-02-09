Rails.application.routes.draw do

  root "site#index"

  # sessions routes
  get "/auth/github/callback", to: "sessions#create", as: :login
  delete "/logout", to: 'sessions#destroy', as: :logout
  
  # api routes
  get '/leaderboard' => 'site#leaderboard'
  get '/load-game/:id' => 'site#load_game'
  post '/save-game' => 'site#save_game'
  

end
