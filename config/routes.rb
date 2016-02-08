Rails.application.routes.draw do

  root "site#index"

  # sessions routes
  get "/auth/:provider/callback", to: "sessions#create"

end
