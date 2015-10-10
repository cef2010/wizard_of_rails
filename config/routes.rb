Rails.application.routes.draw do
  #get routes
  get'static_pages/html'
  get 'static_pages/js'
  get 'static_pages/development'
  get 'ac_demos/home'
  get 'ar/has_one', as: :ar_one
  get 'ar/has_many', as: :ar_hm
  get 'ar/has_many_through', as: :ar_hm_through
  get 'ar/belongs_to', as: :ar_belongs_to
  get 'ar/home', as: :ar_home
  get 'populator', to: 'gem_demos#form_populator'
  #root
  root to: 'static_pages#home'

  #CRUD
  resources :gem_demos
  resources :ac_demos
  # get '/home', to: 'static_pages/home', as: 'home'
  # get '/js', to: 'static_pages/ja', as: 'javascript'
  # get '/development', to: 'static_pages/development', as: 'development'
  # root to: '/html', to: 'static_pages#html', as: 'html'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
