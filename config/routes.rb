Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show]
  get '/users/:id/home_providers', to: 'users#home_providers', as: 'home_providers'
  get '/users/:id/home_shelters', to: 'users#home_shelters', as: 'home_shelters'

  root to: 'pages#home'
  get 'for_providers', to: 'pages#for_providers'
  get 'for_shelters', to: 'pages#for_shelters'
  get 'about_us', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'



  resources :food_offers
  resources :orders

  namespace :my do
    resources :food_offers, only: [:index]
    resources :orders, only: [:index]
  end

end
