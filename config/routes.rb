Rails.application.routes.draw do

  resources :blackboards
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :locations
  resources :messages
  resources :categories do
    resources :posts do
      resources :answers do
        resources :points
      end
    end
  end

  resources :games, only: [:index, :new, :create, :show]
  root 'static#index'
  get 'static/rank'
  resources :static
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'static/index'

  get 'static/userposts/:id' => 'static#userposts'
  get '/table' => 'static#table'
  mount ActionCable.server, at: '/cable'

end
