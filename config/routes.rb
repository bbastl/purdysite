PurdySite::Application.routes.draw do
  get 'products/index'
  get 'vas/index'
  get 'wnew/index'

  get 'about_us' => 'about#index'
  get 'contact_us' => 'about#contact'
  get 'contact' => 'about#contact'
  get 'warranty' => 'about#warranty'
  get 'privacy' => 'about#privacy'
  get 'feedback' => 'about#feedback' 
  get 'sitemap' => 'about#sitemap'
  get 'distributors' => 'about#distributors'

  get 'displays' => 'products#displays'
  get 'leds' => 'products#and_opto'
  get 'fans' => 'products#interfan'

  patch 'admin/product_update' => 'admin#product_update'
  post 'admin/product_create' => 'admin#product_create'

  get 'admin' => 'admin#index'
  post 'admin/order_index' => 'admin#order_index'
  post 'admin/order_edit' => 'admin#order_edit'
  post 'admin/order_update' => 'admin#order_update'


  ##################3
  # Old site redircts
  ####################3
  get "/products/displays/default.cfm", :to => redirect("/products/displays")
  get "/products/displays/intgraph.cfm", :to => redirect("/products/displays_graphic_lcd")
  get "/products/displays/tftmodul.cfm", :to => redirect("/products/monitors_tft_lcd_color")

  get "/products/interfan/default.cfm", :to => redirect("/products/interfan")
  get "/products/interfan/axialac.cfm", :to => redirect("/products/interfan_ac_fans")
  get "/products/interfan/accessories.cfm", :to => redirect("/products/interfan_fan_accessories")

  get "/products/opto/*d", :to => redirect("/products/and_opto")
  get "/products/displays/*d", :to => redirect("/products/displays")
  get "/products/interfan/*d", :to => redirect("/products/interfan")

  get "/about/default.cfm", :to => redirect("/about_us")
  get "/Products", :to => redirect("/products/index")
  get "/vas/default.cfm", :to => redirect("/vas/index")
  get "/wnew/default.cfm", :to => redirect("wnew/index")

  get ':controller/:action'

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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
