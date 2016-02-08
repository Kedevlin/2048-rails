Rails.application.routes.draw do

  root "site#index"

  # sessions routes
  get "/auth/github/callback", to: "sessions#create"

end
