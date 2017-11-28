Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :prestations, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
  get '/components', to: 'pages#components'
end
