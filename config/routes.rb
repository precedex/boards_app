BoardsApp::Application.routes.draw do
  
  # home page
  root  'static_pages#welcome'

  # tools
  get    '/tools',                        to: 'static_pages#tools'

  # books
  resources :resources

  resources :categories, only: [] do
    resources :resources, only: [:index]
  end

  # providers
  get   'providers/index',                 to: 'providers#index'
  get   'providers/import'
  resources :providers do
    collection { post :import }
  end

  # employers
  get   'employers/index',                 to: 'employers#index'
  get   'employers/import'
  resources :employers do
    collection { post :import }
  end

  # exams
  get    '/basicadvanced',                to: 'static_pages#writtens'
  get    '/applied',                      to: 'static_pages#orals'
  get    '/pediboards',                   to: 'static_pages#pedsboards'
  get    '/painboards',                   to: 'static_pages#painboards'
  get    '/echoboards',                   to: 'static_pages#echoboards'
  get    '/icuboards',                    to: 'static_pages#icuboards'
  get    '/crnaboards',                   to: 'static_pages#crnaboards'
  get    '/moca',                         to: 'static_pages#moca'
  
  
  get    '/sites/writtenboards',          to: 'static_pages#writtens'
  get    '/sites/oralboards',             to: 'static_pages#orals'
  get    '/sites/pedsboards',             to: 'static_pages#pedsboards'
  get    '/sites/painboards',             to: 'static_pages#painboards'
  get    '/sites/echoboards',             to: 'static_pages#echoboards'
  get    '/sites/icuboards',              to: 'static_pages#icuboards'
  get    '/sites/crnaboards',             to: 'static_pages#crnaboards'
  get    'sites/moca',                    to: 'static_pages#moca'

  # informatics
  get   'informatics/index',              to: 'informatics#index'
  get   'informatics/import'
  resources :informatics do
    collection { post :import }
  end
  
  get    '/questions/random',             to: 'questions#random'
  get    '/check_answer/:id',             to: 'questions#check_answer'

  resources :questions
  
  resources :topics, only: [] do
    resources :questions, only: [:index]
  end


  # education
  get   'residencies/index',              to: 'residencies#index'
  get   'residencies/import'
  resources :residencies do
    collection { post :import }
  end
  
  get   'lectures/index',                 to: 'lectures#index'
  get   'lectures/import'
  resources :lectures do
    collection { post :import }
  end
  get   '/ms',                            to: 'static_pages#ms'
  get   '/regional',                      to: 'movies#regional'
  get   '/airway',                        to: 'movies#airway'
  get   '/movies',                        to: 'movies#index'
  get   'movies/import'
  resources :movies do
    collection { post :import }
  end
  get   '/sites/pediatric',               to: 'sites#index',     :category => 'education-pediatric'
  get   '/sites/cardiac',                 to: 'sites#index',     :category => 'education-cardiac'
  get   '/sites/miscellaneous',           to: 'sites#index',     :category => 'education'
  get   '/sites/icu',                     to: 'sites#index',     :category => 'icu'

  # societies
  get   '/sites/societies/us',            to: 'sites#index',     :category => 'society-us'
  get   '/sites/societies/state',         to: 'sites#index',     :category => 'society-state'
  get   '/sites/societies/intl',          to: 'sites#index',     :category => 'society-intl'
  get   '/sites/societies/pedi',          to: 'sites#index',     :category => 'society-pedi'
  get   '/sites/societies/pain',          to: 'sites#index',     :category => 'society-pain'
  get   '/sites/societies/quality',       to: 'sites#index',     :category => 'society-quality'
  get   '/sites/societies/history',       to: 'sites#index',     :category => 'society-history'
  get   '/sites/societies/crna',          to: 'sites#index',     :category => 'society-crna'

  # journals
  get   '/sites/journals',                to: 'sites#index',     :category => 'journal'
  
  # blogs
  get   '/sites/blogs',                   to: 'sites#index',     :category => 'blog'

  # sites
  resources :sites
  
  # chessfilms
  resources :chessfilms
  
  # calculators
  get    '/calculator',                   to: 'static_pages#calculator'
  get    '/t4p',                          to: 'static_pages#calculator'
  get    '/delirium',                     to: 'static_pages#delirium'
  get    '/ponv',                         to: 'static_pages#ponv'
  get    '/stopbang',                     to: 'static_pages#stopbang'

  # footer
  get    '/feedback',                     to: 'static_pages#feedback'
  get    '/about',                        to: 'static_pages#about'
end
