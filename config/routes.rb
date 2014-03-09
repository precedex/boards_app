BoardsApp::Application.routes.draw do

  root  'static_pages#welcome'

  get   '/resources/review_textbooks',    to: 'resources#index', :category => 'Review textbook'
  get   '/resources/concise_textbooks',   to: 'resources#index', :category => 'Concise textbook'
  get   '/resources/reference_textbooks', to: 'resources#index', :category => 'Reference textbook'
  get   '/resources/pediatric_textbooks', to: 'resources#index', :category => 'Pediatric textbook'
  get   '/resources/cardiac_textbooks',   to: 'resources#index', :category => 'Cardiac textbook'
  get   '/resources/ob_textbooks',        to: 'resources#index', :category => 'OB textbook'
  get   '/resources/case-based_textbooks',to: 'resources#index', :category => 'Case-based textbook'
  get   '/resources/handbooks',           to: 'resources#index', :category => 'Handbook'
  get   '/resources/oralboards',          to: 'resources#index', :category => 'oralboards'

  get   '/sites/blogs',                   to: 'sites#index',     :category => 'blog'

  get   '/sites/education',               to: 'sites#index',     :category => 'education'
  get   '/sites/education/regional',      to: 'sites#index',     :category => 'education-regional'
  get   '/sites/education/video',         to: 'sites#index',     :category => 'education-video'
  get   '/sites/education/simulation',    to: 'sites#index',     :category => 'education-simulation'

  get   '/sites/journals',                to: 'sites#index',     :category => 'journal'

  get   '/sites/societies/us',            to: 'sites#index',     :category => 'society-us'
  get   '/sites/societies/state',         to: 'sites#index',     :category => 'society-state'
  get   '/sites/societies/intl',          to: 'sites#index',     :category => 'society-intl'
  get   '/sites/societies/pain',          to: 'sites#index',     :category => 'society-pain'
  get   '/sites/societies/crna',          to: 'sites#index',     :category => 'society-crna'

  get    '/secret',                       to: 'static_pages#secret'
  get    '/questions/random',             to: 'questions#random'
  get    '/feedback',                     to: 'static_pages#feedback'
  get    '/tools',                        to: 'static_pages#tools'
  get    '/about',                        to: 'static_pages#about'
  get    '/resources',                    to: 'resources#index'
  get    '/sites/writtenboards',          to: 'static_pages#writtens'
  get    '/sites/oralboards',             to: 'static_pages#orals'
  get    '/sites/pedsboards',             to: 'static_pages#pedsboards'

  get    '/sites',                        to: 'sites#index'
  get    '/orals',                        to: 'static_pages#orals'
  get    '/check_answer/:id',             to: 'questions#check_answer'

  resources :questions, :sites, :resources

  resources :categories, only: [] do
    resources :resources, only: [:index]
  end
end
