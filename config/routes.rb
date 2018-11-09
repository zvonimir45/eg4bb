Rails.application.routes.draw do

  get 'all_wares',   to: 'wares_lists#all_wares'
  get 'picks',       to: 'wares_lists#picks'
  get 'groups',      to: 'wares_lists#groups'
  get 'waits',       to: 'wares_lists#waits'
  get 'references',  to: 'wares_lists#references'
  resources :wares

#  get 'password_resets/new'
#  get 'password_resets/edit'
  root   'static_pages#home'
  
  get '/help',      to: 'static_pages#help'
  get '/about',     to: 'static_pages#about'
  get '/contacts',  to: 'static_pages#contacts'
  get '/links',     to: 'static_pages#links'
  get '/sitemap',   to: 'static_pages#sitemap'
  get '/staff',     to: 'static_pages#staff'

  get 'sessions/new'

  get  '/signup',   to: 'users#new'
#  post '/signup',   to: 'users#create'
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users

  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]

end


