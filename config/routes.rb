Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update] 
<<<<<<< HEAD
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
=======
  resources :groups, only: [:new, :create, :edit, :update]
>>>>>>> 20578e8eede75640b2c12cfb5fadffc8acf58148
end