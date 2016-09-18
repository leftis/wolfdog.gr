Rails.application.routes.draw do
  get 'subscribers/create'

  root '/', controller: :welcome, action: :index
  resources :subscribers, only: :create
end
