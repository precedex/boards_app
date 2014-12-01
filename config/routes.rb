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

  get    '/orals',                        to: redirect("/sites/oralboards")

  # home page
  root  'static_pages#welcome'

  # books
  resources :resources

  resources :categories, only: [] do
    resources :resources, only: [:index]
  end

  # exams
  get    '/sites/writtenboards',          to: 'static_pages#writtens'
  get    '/sites/oralboards',             to: 'static_pages#orals'
  get    '/sites/pedsboards',             to: 'static_pages#pedsboards'

  get    '/questions/random',             to: 'questions#random'
  get    '/check_answer/:id',             to: 'questions#check_answer'

  resources :questions
  
  resources :topics, only: [] do
    resources :questions, only: [:index]
  end

  # blogs
  get   '/sites/blogs',                   to: 'sites#index',     :category => 'blog'

  # education
  get   '/sites/education',               to: 'sites#index',     :category => 'education'
  get   '/sites/education/regional',      to: 'sites#index',     :category => 'education-regional'
  get   '/sites/education/airway',        to: 'sites#index',     :category => 'education-airway'
  get   '/sites/education/video',         to: 'sites#index',     :category => 'education-video'
  get   '/sites/education/simulation',    to: 'sites#index',     :category => 'education-simulation'
  
  # journals
  get   '/sites/journals',                to: 'sites#index',     :category => 'journal'

  # societies
  get   '/sites/societies/us',            to: 'sites#index',     :category => 'society-us'
  get   '/sites/societies/state',         to: 'sites#index',     :category => 'society-state'
  get   '/sites/societies/intl',          to: 'sites#index',     :category => 'society-intl'
  get   '/sites/societies/pain',          to: 'sites#index',     :category => 'society-pain'
  get   '/sites/societies/crna',          to: 'sites#index',     :category => 'society-crna'

  # sites
  resources :sites

  # tools
  get    '/tools',                        to: 'static_pages#tools'
  
  # movies
  get    '/movies',                        to: 'static_pages#movies'

  # footer
  get    '/secret',                       to: 'static_pages#secret'
  get    '/feedback',                     to: 'static_pages#feedback'
  get    '/about',                        to: 'static_pages#about'
end
