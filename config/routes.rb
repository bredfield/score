Score::Application.routes.draw do
  # resources :entries  
  # resources :stats
  # resources :entries

  devise_for :users
 	resources :users, :only => [ :show, :edit, :update ]

  match '/auth/:provider/callback' => 'sessions#create'

  match '/signin' => 'sessions#new', :as => :signin

  match '/signout' => 'sessions#destroy', :as => :signout

  match '/auth/failure' => 'sessions#failure'

  get "pages/index"
  get "pages/about"

  root :to => "pages#index"



end
