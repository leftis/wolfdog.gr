Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'subscribers/create'

  root '/', controller: :welcome, action: :index
  resources :subscribers, only: :create
end
