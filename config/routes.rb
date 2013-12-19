BoardsApp::Application.routes.draw do

  root  'static_pages#welcome'
  
  get   '/resources/review_textbooks',    to: 'resources#index', :category => 'Review textbook'
  get   '/resources/concise_textbooks',   to: 'resources#index', :category => 'Concise textbook'
  get   '/resources/reference_textbooks', to: 'resources#index', :category => 'Reference textbook'
  get   '/resources/pediatric_textbooks', to: 'resources#index', :category => 'Pediatric textbook'
  get   '/resources/cardiac_textbooks',   to: 'resources#index', :category => 'Cardiac textbook'
  get   '/resources/ob_textbooks',        to: 'resources#index', :category => 'OB textbook'
  get   '/resources/qanda_textbooks',     to: 'resources#index', :category => 'Q&A book'
  get   '/resources/case-based_textbooks',to: 'resources#index', :category => 'Case-based textbook'
  get   '/resources/handbooks',           to: 'resources#index', :category => 'Handbook'
  get   '/resources/oralboards',          to: 'resources#index', :category => 'oralboards'
  get   '/resources/exambooks',           to: 'resources#index', :category => 'exambooks'
  
  get   '/sites/writtenboards',           to: 'sites#index',     :category => 'writtenboards'
  get   '/sites/oralboards',              to: 'sites#index',     :category => 'oralboards'
  get   '/sites/blogs',                   to: 'sites#index',     :category => 'blog'
  get   '/sites/education',               to: 'sites#index',     :category => 'education'
  get   '/sites/journals',                to: 'sites#index',     :category => 'journal'
  
  get   '/sites/societies/us',            to: 'sites#index',     :category => 'society-us'
  get   '/sites/societies/state',         to: 'sites#index',     :category => 'society-state'
  get   '/sites/societies/intl',          to: 'sites#index',     :category => 'society-intl'
  get   '/sites/societies/pain',          to: 'sites#index',     :category => 'society-pain'
  get   '/sites/societies/crna',          to: 'sites#index',     :category => 'society-crna'
  
  get    '/questions/random',             to: 'questions#random'
  get    '/feedback',                     to: 'static_pages#feedback'
  get    '/tools',                        to: 'static_pages#tools'
  get    '/about',                        to: 'static_pages#about'
  get    '/resources',                    to: 'resources#index'
  get    '/search',                       to: 'static_pages#search'
  get    '/sites',                        to: 'sites#index'
  get    '/orals',                        to: 'static_pages#orals'
  get    '/check_answer/:id',             to: 'questions#check_answer'
  
  resources :questions, :resources, :sites
  
end
