Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'erstks#index'

  post 'erstks/symbol' => 'erstks#symbol', as: :symbol

  get 'erstks/monday' => 'erstks#monday', as: :monday
  get 'erstks/monday_pm' => 'erstks#monday_pm', as: :monday_pm
  get 'erstks/tuesday' => 'erstks#tuesday', as: :tuesday
  get 'erstks/tuesday_pm' => 'erstks#tuesday_pm', as: :tuesday_pm
  get 'erstks/wednesday' => 'erstks#wednesday', as: :wednesday
  get 'erstks/wednesday_pm' => 'erstks#wednesday_pm', as: :wednesday_pm
  get 'erstks/thursday' => 'erstks#thursday', as: :thursday
  get 'erstks/thursday_pm' => 'erstks#thursday_pm', as: :thursday_pm
  get 'erstks/friday' => 'erstks#friday', as: :friday
  get 'erstks/friday_pm' => 'erstks#friday_pm', as: :friday_pm

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
