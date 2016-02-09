Rails.application.routes.draw do

  root "site#index"

  # sessions routes
  get "/auth/github/callback", to: "sessions#create"
  delete "/logout", to: 'sessions#destroy', as: :logout

end
