Rails.application.routes.draw do
  root to: "users#index"

  get "/users" => "users#index", as: "users"
  get "/users/new" => "users#new", as: "new_user"
  post "/users" => "users#create"
  get "/users/:id" => "users#show", as: "user"

  get "/login" => "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions" => "sessions#create"

  get "/libraries" => "libraries#index"
  get "/libraries/new" => "libraries#new", as: "new_library"
  post "libraries" => "libraries#create"

  get "/users/:user_id/libraries" => "library_users#index", as: "user_libraries"

end
