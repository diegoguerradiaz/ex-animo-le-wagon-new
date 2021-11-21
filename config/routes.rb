Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]

  root to: 'pages#home'
  get 'for_providers', to: 'pages#for_providers'
  get 'for_shelters', to: 'pages#for_shelters'
  get 'about_us', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'

  resources :food_offers
  resources :orders

  namespace :my do
    resources :food_offers, only: [:index]
  end

end
