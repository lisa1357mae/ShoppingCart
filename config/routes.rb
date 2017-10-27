Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :products
  resources :orders
  root 'store#index', as: 'store_index'


end
