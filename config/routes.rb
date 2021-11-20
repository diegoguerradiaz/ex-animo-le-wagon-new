Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'for_providers', to: 'pages#for_providers'
  get 'for_shelters', to: 'pages#for_shelters'
  get 'about_us', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'
  resources :food_offers
end
