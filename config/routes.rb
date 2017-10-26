Rails.application.routes.draw do
  get 'user/first'

  get 'user/last'

  get 'user/email'

  get 'user/password'

  get 'startup/index'

  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
