Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  root 'adboards#index'
  resources :adboards, only: [:index, :new, :create]
  resources :adds, only: [:new, :create]
end
