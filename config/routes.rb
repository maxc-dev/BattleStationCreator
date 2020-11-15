Rails.application.routes.draw do
  resources :manufacturers
  resources :categories
  root 'home#home', as: 'home_index'

  get 'categories', to: 'categories#show', as: 'parts_index'
  get 'manufacturers', to: 'manufacturers#show', as: 'manufacturers_index'
end
