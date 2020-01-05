Rails.application.routes.draw do
  devise_for :users
  root 'groupss#index'
  resources :users, only: [:edit, :update] 
  resources :groups, only: [:new, :create, :edit, :update]
end