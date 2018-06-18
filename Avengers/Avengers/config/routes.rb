Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :loais
  get '/' => 'home#index'
  get '/contact' => 'contact#contact'
  get '/home' => 'home#index'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
end
