Rails.application.routes.draw do
  resources :visits
  resources :supervisors
  resources :visits
  resources :visits
  resources :visit_statuses
  resources :students
  resources :companies
  resources :specialties
  resources :districts
  resources :app_users
  devise_for :users
  resources :app_user_types
  get 'home/index'
  root 'home#index'

  get "visitas/get_by_supervisor" => "visits#get_by_supervisor"
  get "visitas/get_by_supervisor2" => "visits#get_by_supervisor2"
  get "visitas/get_by_id" => "visits#get_by_id"
  get "app_usuarios/login" => "app_users#login"
  get "estudiantes/get_by_company" => "students#get_by_company"
  
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
