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
    get "/amenities/:id" => "amenities#show"
    patch "/amenities/:id" => "amenities#update"

    get "/images" => "images#index"
    post "/images" => "images#create"
    get "/images/:id" => "images#show"
    patch "/images/:id" => "images#patch"
  end
end
