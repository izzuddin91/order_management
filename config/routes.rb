Rails.application.routes.draw do

  get '/autocomplete_address' => "orders#autocomplete_address"
  get 'dashboard' => "orders#dashboard"
  devise_for :users
  root to: "home#index"
  resources :orders
  get 'login' => "sessions#new"
  post'login'   => 'sessions#create'
  get '/logout.id' => 'sessions#destroy', as: "destroy"
  delete "/logout.id" => "admins#destroy"

  get "/searches" => "search#index"

  patch "order_modify" => 'orders#update' , as: "order_modify"
  get "dashboard" => "admins#show"

  post "search_number" => 'search#search_number'

  post "tracker" => 'search#tracker'

  post "transporter" => 'search#transporter'

  post "pick_up_date" => 'search#pick_up_date'

  get "export" => 'orders#export'

  get '/statistic/:id' => 'orders#statistic'

  get "/show_details" => 'orders#show_details'

  get "calendar" => "orders#calendar"

  get "payment_overdue" => "orders#payment_overdue"


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
