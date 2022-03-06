# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  get 'tryon/:product_id', to: 'tryons#show', as: 'try_on'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
