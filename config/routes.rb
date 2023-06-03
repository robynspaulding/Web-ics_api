Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"


  get "/comics" => "comics#index" 
  post "/comics" => "comics#create"
  get "/comics/:id" => "comics#show"
  patch "/comics/:id" => "comics#update"
  delete "/comics/:id" => "comics#destroy"

  get "/comments" => "comments#index" 
  post "/comments" => "comments#create"
  get "/comments/:id" => "comments#show"
  patch "/comments/:id" => "comments#update"
  delete "/comments/:id" => "comments#destroy"

end
