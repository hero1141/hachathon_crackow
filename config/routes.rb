Rails.application.routes.draw do
  resources :messages
  resources :categories do
    resources :posts
  end 

  resources :games, only: [:index, :new, :create, :show]
  root 'static#index'

  resources :static
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'static/index'

  mount ActionCable.server, at: '/cable'

end
