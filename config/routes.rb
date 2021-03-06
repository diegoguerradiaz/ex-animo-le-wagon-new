Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  delete "users/:id", to: "users#destroy"

  resources :users, only: [:show, :edit, :update]
  get '/users/:id/home_providers', to: 'users#home_providers', as: 'home_providers'
  get '/users/:id/home_shelters', to: 'users#home_shelters', as: 'home_shelters'

  root to: 'pages#home'
  get 'providers', to: 'pages#providers'
  get 'shelters', to: 'pages#shelters'
  get 'about_us', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'



  resources :food_offers do
    resources :orders, only: [:create]
  end

  namespace :my do
    resources :food_offers# Display the 'Offers' for Providers
    resources :orders # Update & display all 'Orders' from any User
  end

end
