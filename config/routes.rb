Rails.application.routes.draw do
  resources :posts
  resources :categories 
  resources :games, only: [:index, :new, :create, :show]
  root 'static#index'
  devise_for :users
  get 'static/index'
end
