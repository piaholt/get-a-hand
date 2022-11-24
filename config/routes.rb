Rails.application.routes.draw do
  devise_for :users
  root to: "services#index"
  resources :users, only: %i[show]
  resources :services do
    resources :bookings, only: %i[new create]
  end

  # resources :bookings
  get "/my_bookings/:id", to: "bookings#my_bookings", as: :my_bookings
  get "/my_services/:id", to: "services#my_services", as: :my_services
  get "/my_requests/:id", to: "bookings#my_requests", as: :my_requests
  get "/my_requests/:id/confirm", to: "bookings#confirm", as: :confirm_request
  get "/profile", to: "users#profile", as: :profile
  # get "/user/edit", to: "users#edit", as: :edit_user
  # patch  "/user", to: "users#update"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/categories", to: "services#categories", as: :categories
end
