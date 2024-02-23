Rails.application.routes.draw do
  get 'search_list/index'
  get 'detail_goverment/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get 'regist_coop', to: 'rogin#regist_coop'
  get '/signup', to:'registrations#new'
  get '/status_list', to: 'coop_home#status_list' 
  get 'search_conditions/new', to: 'search_conditions#new', as: 'new_search_conditions'
  get 'status_list', to: 'coop_home#status_list'
  get '/detail_goverment', to: 'detail_goverment#index'
  get '/coop_home/status_list', to: 'coop_home#status_list'
  get 'search_conditions/new', to: 'search_conditions#new'
  get '/search_list', to: 'search_list#index'





  # Defines the root path route ("/")
  # root "posts#index"
  resources :posts, only: [:index, :new, :create]

  resources :user_local_goverment, only: [:new, :create]
  resources :companies, only:[:create]
end
