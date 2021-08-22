Rails.application.routes.draw do
  resources :food_likes
  resources :food_recommendations
  resources :food_specials
  resources :food_notes
  resources :food_locations
  resources :food_categories
  resources :likes
  resources :notes
  resources :recommendations
  resources :specials
  resources :locations
  resources :categories
  resources :foods
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
