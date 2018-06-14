Rails.application.routes.draw do
  resources :loais
  get '/' => 'home#index'
  get '/contact' => 'contact#contact'
  get '/home' => 'home#index'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
