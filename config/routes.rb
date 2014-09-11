Rails.application.routes.draw do
  root to: 'application#index'

  devise_for :users

  resources :users do
    resources :lodgings
    # resources :bookings, only: :index
  end

  resources :lodgings, only: :index do
    resources :bookings, only: [:new, :create]
    resources :locations, only: :index
  end

  match('/search', { :via => :get, :to => 'lodgings#search' } )
  match('/legal', {:via => :get, :to => 'application#legal' } )
end
