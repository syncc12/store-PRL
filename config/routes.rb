Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  resources :sellers, only: [:show, :index]
  resources :products, only: [:show, :index]
  resources :dashboards, only: [:show]
  namespace :user do
    resources :sellers, only: [:show, :index, :new, :create] do
      resources :products, only: [:show, :index, :new, :create]
    end
  end
end
