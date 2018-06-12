Rails.application.routes.draw do
<<<<<<< HEAD
  get '/contact' => 'contact#contact'
=======
>>>>>>> nhanlc
  resources :products
  get 'contact/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
