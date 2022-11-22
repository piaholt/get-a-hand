Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :services
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "my_bookings", to: "bookings#my_bookings", as: :my_bookings
end
