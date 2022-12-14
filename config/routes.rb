Rails.application.routes.draw do
  devise_for :users

  # Defines the root path route ("/")
  root "paintings#index"
  get "pages/dashboard", to: "pages#dashboard", as: :dashboard

  resources :paintings, except: [:index] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create, :index]
  end
end
