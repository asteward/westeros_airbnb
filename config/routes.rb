Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :lodgings, except: :index
  end

  resources :lodgings, only: :index

  root to: 'application#index'
end
