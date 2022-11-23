Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: %i[show]
  resources :services do
    resources :bookings, only: %i[new create]
  end

  # resources :bookings
  get "/my_bookings", to: "bookings#my_bookings", as: :my_bookings
  get "/my_services", to: "services#my_services", as: :my_services
  # get "/user", to: "users#show", as: :user
  # get "/user/edit", to: "users#edit", as: :edit_user
  # patch  "/user", to: "users#update"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
