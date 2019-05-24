Rails.application.routes.draw do
  
  namespace :api do

    get "/contacts" => "contacts#index"

    get "/contact/:id" => "contacts#show"

    post "/new_contact" => "contacts#create"

    patch "/contact/:id" => "contacts#update"

    delete "/contact/:id" => "contacts#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/user/:id" => "users#show_user"

    patch "user/:id" => "users#show_user"

    post "new_user" => "users#create"

  end

end



