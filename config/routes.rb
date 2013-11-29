BoardsApp::Application.routes.draw do

  root  'static_pages#welcome'
  
  get   '/resources/review_textbooks',    to: 'resources#index', :category => 'Review textbook'
  get   '/resources/concise_textbooks',   to: 'resources#index', :category => 'Concise textbook'
  get   '/resources/reference_textbooks', to: 'resources#index', :category => 'Reference textbook'
  get   '/resources/pediatric_textbooks', to: 'resources#index', :category => 'Pediatric textbook'
  get   '/resources/qanda_textbooks',     to: 'resources#index', :category => 'Q&A book'
  get   '/resources/case-based_textbooks',to: 'resources#index', :category => 'Case-based textbook'
  get   '/resources/handbooks',           to: 'resources#index', :category => 'Handbook'
  
  get   '/sites/writtenboards',           to: 'sites#index',     :category => 'writtenboards'
  get   '/sites/oralboards',              to: 'sites#index',     :category => 'oralboards'
  get   '/sites/societies',               to: 'sites#index',     :category => 'society'
  get   '/sites/blogs',                   to: 'sites#index',     :category => 'blog'
  
  get    '/feedback',  to: 'static_pages#feedback'
  get    '/resources', to: 'resources#index'
  get    '/search',    to: 'questions#index'
  get    '/sites',     to: 'sites#index'
  
  resources :questions, :resources, :sites
  

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
