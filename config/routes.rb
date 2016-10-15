Rails.application.routes.draw do
  root 'home#index'

  get '/contact-us',  to: 'contact_us#index'
  get '/menu',        to: 'menu#index'
end
