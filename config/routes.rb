Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :lodgings, except: :index
    # resources :bookings, only: :index
  end

  resources :lodgings, only: :index do
    resources :bookings, only: [:new, :create]
  end


  root to: 'application#index'
end
