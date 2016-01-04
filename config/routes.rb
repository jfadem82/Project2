Rails.application.routes.draw do
 

  get 'products/index' => 'products#index'

  # get 'products/create' => 'products#'

  # get 'products/new' => 'products#create'

  # get 'products/edit'

  # get 'products/show'

  # get 'products/update'

  # get 'products/destroy'

  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  get 'logout' => 'sessions#destroy'

  root 'customers#index'

  get 'customers/:customer_id/products' => 'products#index', as: :customer_products

  post 'customers/:customer_id/products' => 'products#create'

  get 'customers/:customer_id/products/new' => 'products#new', as: :product_new

  get 'customers/:customer_id/products/:id/edit' => 'products#edit'

  get 'products/:product_id/products/:id' => 'products#show'

  patch 'customers/:customer_id/products/:id' => 'products#update'

  delete 'customers/:customer_id/products/:id' => 'customers#destroy'

  get 'customers' => 'customers#index'

  get 'customers/new' => 'customers#new'

  post 'customers/' => 'customers#create'

  get 'customers/:id' => 'customers#show', as: :customer

  get 'customers/:id/edit' => 'customers#edit', as: :edit_customer

  patch 'customers/:id' => 'customers#update'

  delete 'customers/:id' => 'customers#destroy'

#   resources :cats do
#   resources :todos
# end

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
