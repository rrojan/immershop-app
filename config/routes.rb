# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  get 'tryon/:product_id', to: 'tryons#show', as: 'try_on'

  get 'products/:id', to: 'products#show', as: 'product'
  get 'products/:id/add_to_cart', to: 'products#add_to_cart', as: 'add_to_cart'
  get 'products/:id/buy', to: 'products#buy', as: 'buy'
  get 'cart', to: 'cart#index', as: 'cart'
end
