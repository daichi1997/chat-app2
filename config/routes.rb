Rails.application.routes.draw do
  root to: "messages#index"
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]

end