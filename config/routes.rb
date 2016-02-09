Rails.application.routes.draw do

  root "site#index"
  
  post '/save-game' => 'site#save_game'
  
end
