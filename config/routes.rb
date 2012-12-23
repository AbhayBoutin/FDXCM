Fdxcm::Application.routes.draw do

# Weekly Review
  match "weekly_review" => 'weekly_review#index'
  # match "weekly_reviews/:weekreference" => 'weekly_review#show'
  # , :requirements => { :date => /\d{4}*/ }
  get "weekly_review/index"
  get "weekly_review/edit"
  get "weekly_review/:weekreference", to: 'weekly_review#show'#, as: 'weekreference'
  get "weekly_review/show/:weekreference", to: 'weekly_review#show'
  get "weekly_review/update"

  authenticated :user do
    root :to => 'home#index'
  end
  
  devise_for :users

  get "home/index"

  resources :production_pays

  resources :flat_pays

  resources :frequencies

  resources :pay_profiles

  resources :employee_pays

  resources :pays

  resources :employee_manager_assignments

  resources :employee_terminals

  resources :daily_data_delivery_exceptions

  resources :delivery_exceptions

  resources :businesses

  resources :daily_data_employees

  resources :daily_data

  resources :daily_data_vehicles

  resources :vehicles

  resources :vehicle_odometers

  resources :vehicle_types

  resources :vehicle_fuels

  resources :service_types

  resources :employee_psas

  resources :psazips

  resources :zips

  resources :psa_states

  resources :states

  resources :psas

  resources :fedex_contracts

  resources :addendums

  resources :regions

  resources :terminals

  resources :user_roles

  resources :roles

  resources :users

  resources :employees

  resources :notes

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # CHRIS.DEVISE
  root :to => "home#index"
  
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
