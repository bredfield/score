Score::Application.routes.draw do

  devise_for :users
  #, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
 	resources :users, :only => [ :show, :edit, :update ]


  get "pages/index"
  get "pages/about"

  root :to => "pages#index"



end
