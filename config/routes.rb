Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  root to: 'home#index'
  
  resources :games, only:[:index, :show, :new, :create, :edit, :update, :destroy]
  resources :companies, only:[:index, :show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
