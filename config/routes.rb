Rails.application.routes.draw do
  #get routes
  get'static_pages/html'
  get 'static_pages/development'
  get 'ac_demos/home'
  get 'ar/has_one', as: :ar_one
  get 'ar/has_many', as: :ar_hm
  get 'ar/has_many_through', as: :ar_hm_through
  get 'ar/belongs_to', as: :ar_belongs_to
  get 'ar/home', as: :ar_home
  #root
  root to: 'static_pages#home'

  #CRUD
  resources :gem_demos
  resources :ac_demos
  # get '/home', to: 'static_pages/home', as: 'home'
  # get '/js', to: 'static_pages/ja', as: 'javascript'
  # get '/development', to: 'static_pages/development', as: 'development'
  # root to: '/html', to: 'static_pages#html', as: 'html'

end
