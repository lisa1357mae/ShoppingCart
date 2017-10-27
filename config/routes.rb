Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :products
  root 'store#index', as: 'store_index'


  resources :comments
  resources :image_posts
  resources :text_posts
  resources :posts
  resources :users
  resources :sessions

  get 'signup', to: 'users#new', as: 'signup'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # root 'posts#index'
end
