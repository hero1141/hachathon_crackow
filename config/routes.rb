Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :locations
  resources :messages
  resources :categories do
    resources :posts
  end 

  resources :games, only: [:index, :new, :create, :show]
  root 'static#index'

  resources :static
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'static/index'
  get 'static/userposts/:id' => 'static#userposts'

  mount ActionCable.server, at: '/cable'

end
