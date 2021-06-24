# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  resources :users
end
