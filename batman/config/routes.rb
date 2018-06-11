Rails.application.routes.draw do
  get '/contact' => 'contact#contact'
  get 'themheader/index'
  root 'themheader#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
