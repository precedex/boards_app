BoardsApp::Application.routes.draw do

  # Deprecated routes
  # At the top, because they might otherwise match a real route
  get   '/resources/reference_textbooks', to: redirect("/categories/1/resources")
  get   '/resources/concise_textbooks',   to: redirect("/categories/2/resources")
  get   '/resources/case-based_textbooks',to: redirect("/categories/3/resources")
  get   '/resources/pediatric_textbooks', to: redirect("/categories/4/resources")
  get   '/resources/cardiac_textbooks',   to: redirect("/categories/5/resources")
  get   '/resources/ob_textbooks',        to: redirect("/categories/6/resources")
  get   '/resources/handbooks',           to: redirect("/categories/7/resources")
  get   '/resources/review_textbooks',    to: redirect("/categories/8/resources")
  get   '/resources/oralboards',          to: redirect("/categories/9/resources")

  get   '/sites/writtenboards',           to: redirect("/boards/written")
  get   '/sites/oralboards',              to: redirect("/boards/oral")
  get   '/sites/pedsboards',              to: redirect("/boards/ped")
  get   '/orals',                         to: redirect("/boards/oral")

  get   '/sites/education',               to: redirect("/courses")
  get   '/sites/education/:subcategory',  to: redirect("/courses/%{subcategory}")

  get   '/sites/societies/:subcategory',  to: redirect("/societies/%{subcategory}")

  get   '/sites/blogs',                   to: redirect("/blogs")

  get   '/sites/journals',                to: redirect("/journals")

  # home page
  root  'static_pages#welcome'

  # books
  resources :resources

  resources :categories, only: [] do
    resources :resources, only: [:index]
  end

  # exams
  resources :boards, only: [] do
    collection do
      get "written"
      get "oral"
      get "ped"
    end
  end

  get    '/check_answer/:id',             to: 'questions#check_answer'

  resources :questions do
    get "random", on: :collection
  end

  # blogs
  resources :blogs, only: [:index]

  # education
  resources :courses, only: [:show, :index]

  # journals
  resources :journals, only: [:index]

  # societies
  resources :societies, only: [:show]

  # sites
  resources :sites

  # tools
  resources :tools, only: [:index]

  # footer
  get    '/secret',                       to: 'static_pages#secret'
  get    '/feedback',                     to: 'static_pages#feedback'
  get    '/about',                        to: 'static_pages#about'
end
