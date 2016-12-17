Rails.application.routes.draw do
  devise_for :users
  get 'static/index'
  root 'static#index'

end
