Rails.application.routes.draw do
  resources :parts
  resources :manufacturers
  resources :categories
  root 'home#home', as: 'home_index'

=begin
  get 'categories', to: 'categories#show', as: 'parts_index'
  get 'manufacturers', to: 'manufacturers#show', as: 'manufacturers_index'
=end
end
