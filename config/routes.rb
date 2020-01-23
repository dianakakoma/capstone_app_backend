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

    get "/amenity_users" => "amenity_users#index"
    post "/amenity_users" => "amenity_users#create"
    post "/amenity_users/all" => "amenity_users#create_all"
    delete "/amenity_users/:id" => "amenity_users#destroy"

    get "/images" => "images#index"
    post "/images" => "images#create"
    get "/images/:id" => "images#show"
  end
end
