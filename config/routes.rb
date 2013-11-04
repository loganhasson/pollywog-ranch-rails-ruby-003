PollywogRanchRailsRuby003::Application.routes.draw do

  get '/ponds' => 'ponds#index'
  post '/ponds' => 'ponds#create'
  get '/ponds/new' => 'ponds#new', as: 'new_pond'
  get '/ponds/:id' => 'ponds#show', as: 'pond'
  get '/ponds/:id/edit' => 'ponds#edit', as: 'edit_pond'
  post '/ponds/:id/update' => 'ponds#update'
  delete '/ponds/:id/destroy' => 'ponds#destroy', as: 'delete_pond'

  get '/frogs' => 'frogs#index'
  post '/frogs' => 'frogs#create'
  get '/frogs/new' => 'frogs#new', as: 'new_frog'
  get '/frogs/:id' => 'frogs#show', as: 'frog'
  get '/frogs/:id/edit' => 'frogs#edit', as: 'edit_frog'
  post '/frogs/:id/update' => 'frogs#update'
  delete '/frogs/:id/destroy' => 'frogs#destroy'

  get '/tadpoles' => 'tadpoles#index'
  get '/frogs/:id/tadpoles/new' => 'tadpoles#new', as: 'new_tadpole'
  post '/tadpoles' => 'tadpoles#create'
  get '/tadpoles/:id' => 'tadpoles#show', as: 'tadpole'
  get '/tadpoles/:id/edit' => 'tadpoles#edit', as: 'edit_tadpole'
  post '/tadpoles/:id/update' => 'tadpoles#update'
  delete '/tadpoles/:id/destroy' => 'tadpoles#destroy'
  get '/tadpoles/:id/evolve' => 'tadpoles#evolve'

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
