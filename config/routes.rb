Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'apisearches#index'
  resources :apisearches, only: [:index, :show, :new, :create, :destroy]
  resources :favorites, only: [:index, :show, :new, :create, :destroy]
  resources :profiles, only: [:show]
  resources :contact, only: [:index, :show, :new, :create, :destroy]
  resources :orders, only: [:index, :new, :show, :create]
end
