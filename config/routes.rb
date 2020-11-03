Rails.application.routes.draw do
  root 'home#index'
  resources :cars
  resources :appointements, only: [:index, :create]
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
