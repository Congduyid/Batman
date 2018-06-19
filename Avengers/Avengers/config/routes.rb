Rails.application.routes.draw do

    get 'admin' => 'admin#index'

    controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'admin/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :orders
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
