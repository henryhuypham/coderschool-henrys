Rails.application.routes.draw do
  post 'orders/place_order', to: 'orders#place_order'
  resources :food_items
  get 'contact-us', to: 'contact_us#index'
  get 'menu', to: 'menu#index'
  get 'menu/search', to: 'menu#search'

  root 'home#index'
end
