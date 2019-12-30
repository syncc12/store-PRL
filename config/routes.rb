Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  resources :products, only: [:show, :index, :new, :create]
  resources :sellers, only: [:show, :index, :new, :create]
end
