Rails.application.routes.draw do
  devise_for :users

  # Defines the root path route ("/")
  root "paintings#index"
  get "pages/dashboard", to: "pages#dashboard"
  resources :paintings, only: [:new, :show, :create, :edit, :destroy, :update] do
    resources :bookings, only: [:new, :create]
  end
end
