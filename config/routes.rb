Score::Application.routes.draw do
  # resources :entries  
  # resources :stats
  # resources :entries

  devise_for :users
  resources :users, :only => [:show]

  get "pages/index"
  get "pages/about"

  root :to => "pages#index"



end
