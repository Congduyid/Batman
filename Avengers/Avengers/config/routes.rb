Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
    end

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  resources :loais
  get '/' => 'home#index'
  get '/contact' => 'contact#contact'
  get '/home' => 'home#index'

  resources :products do
  get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
end
