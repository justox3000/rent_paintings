Rails.application.routes.draw do
  devise_for :users
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "paintings#index"
  # get '/paintings/:id', to: 'paintings#show', as: :painting

  resources :paintings, only: [:new, :show, :create] do
    resources :bookings, only: [:new, :create]
  end
end
