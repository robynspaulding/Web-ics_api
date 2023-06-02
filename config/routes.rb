Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/comics" => "comics#index" 
  post "/comics" => "comics#create"
  get "/comics/:id" => "comics#show"
  patch "comics/:id" => "comics#update"
end
