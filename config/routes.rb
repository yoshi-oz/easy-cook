Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :mypages, only: [:show]
  resources :forms, only: [:new, :create]
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy, :show]
end
