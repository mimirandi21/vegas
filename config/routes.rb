Rails.application.routes.draw do
  resources :transportations
  resources :locations
  resources :destinations
  resources :categories
  resources :foods

  root 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
