Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/contact' => 'contact#contact'
  resources :products do
    collection { post :search, to: 'products#index' }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
