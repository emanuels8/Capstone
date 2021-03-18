Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/games" => "games#index"
    get "/games/:id" => "games#show"
    get "/reviews" => "review#index"
    get "/reviews/:id" => "review#show"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    post "/reviews" => "review#create"
  end
end
