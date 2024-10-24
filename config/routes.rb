Rails.application.routes.draw do
  # root "homes#index"
  root "posts#index"
  resources :posts
  resources :users
  resources :sessions, only: [ :new, :create, :destroy ]
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  delete "logout", to: "sessions#destroy", as: "logout"
  resources :posts do
    resources :comments
  end
end
