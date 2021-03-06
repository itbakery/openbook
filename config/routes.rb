Openbook::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users
  resources :customers
  resources :invoicelines
  resources :invoices
  resources :pricesheets
  resources :posts
  resources :images
  resources :ratesheets
  resources :periods
  resources :roomrates
  resources :roomtypes
  resources :contacts
  resources :zones
  resources :provinces
  resources :countries
  resources :hotels
  resources :partners
  resources :currencies
  resources :organizations

  get "dashboard/index"
  namespace :account do
    resources :invoicelines
    resources :invoices do
      get :sendconfirm, on: :member
      get :confirmpayment, on: :member
    end
    resources :customers
  end
  namespace :admin do
    root to: "dashboard#index"
    resources :clients
    resources :organizations
    resources :currencies
    resources :partners
    resources :hotels do
      resources :images
      resources :ratesheets
      get :create_ratesheet, on: :member
      post :create_ratesheet, on: :member
      put  :create_ratesheet, on: :member, to: "hotels#update_ratesheet"
      delete  :destroy_ratesheet, on: :member
      get :all_ratesheet, on: :member
      get :edit_ratesheet, on: :member
      get :hotelinfo, on: :member
      get :viewratesheet, on: :member
      resources :pricesheets
    end
    resources :countries
    resources :provinces
    resources :zones
    resources :contacts
    resources :roomtypes
    resources :roomrates
    resources :periods
    resources :ratesheets
    resources :images
    resources :pricesheets
  end
  resources :clients


  get "home/index"
  #root to: "home#index"
  root to: "home#underconstruct"

  match "confirmpayment/:invoice_no" =>  "account/invoices#confirmpayment"
  match "admin/hotels/new" => "admin/hotels#new"
  #referece   params[:code]
  #{"invoice_no"=>"iv2013005"}
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

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
