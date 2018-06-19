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

  get '/mottrieubatrieu' => 'mottrieubatrieu#index'
  
  get '/dienthoai' => 'mottrieubatrieu#tatcasp'
  get 'theogia/giacoban' => 'mottrieubatrieu#gia1'
  get 'theogia/motba' => 'mottrieubatrieu#motba'
  get 'theogia/batam' => 'mottrieubatrieu#batam'
  get 'theogia/tammuoi' => 'mottrieubatrieu#tammuoi'
  get 'theogia/muoimuoilam' => 'mottrieubatrieu#muoimuoilam'
  get 'theogia/muoilamhaimuoi' => 'mottrieubatrieu#muoilamhaimuoi'
  
  get 'theogia/haimuoihailam' => 'mottrieubatrieu#haimuoihailam'
  get 'theogia/hailambamuoi' => 'mottrieubatrieu#hailambamuoi'
  get 'theogia/bamuoibalam' => 'mottrieubatrieu#bamuoibalam'
  get 'theogia/balambonmuoi' => 'mottrieubatrieu#balambonmuoi'
  get 'theogia/bonmuoibonlam' => 'mottrieubatrieu#bonmuoibonlam'
  get 'theogia/bonlamnammuoi' => 'mottrieubatrieu#bonlamnammuoi'




  resources :products do
  get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
end
