Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/properties" => "properties#index"
    post "/properties" => "properties#create"
    get "/properties/:id" => "properties#show"
    patch "/properties/:id" => "properties#update"

    get "/amenities" => "amenities#index"
    post "/amenities" => "amenities#create"
    get "/amenities" => "amenities#show"
    patch "/amenities" => "amenities#update"
  end
end
