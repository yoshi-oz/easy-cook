Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :mypages, only: [:show]
  resources :forms, only: [:new]
  resources :users, only: [:edit, :update]
end
