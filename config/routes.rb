Rails.application.routes.draw do
  devise_for :users

  # Defines the root path route ("/")
  root "paintings#index"

  resources :paintings, only: [:new, :show, :create] do
    resources :bookings, only: [:new, :create]
  end
end
