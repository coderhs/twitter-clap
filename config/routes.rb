Rails.application.routes.draw do

  #resources :users

  get 'set_emails/new'

  get 'send_tweet/new'

  root 'home#index'

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks', 
  																	registrations: 'users/registrations', 
  																	:invitations => 'users/invitations' }

  #get '/auth/twitter/callback', to: 'home/index'
  get '/auth/twitter/callback', :controller => 'home', :action => 'index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/index', :controller => 'users', :action => 'index'
  get 'users/users/show/:id', :controller => 'users', :action => 'show'
  get '/users/users/destroy/:id', :controller => 'users', :action => 'destroy'
  get '/users/users/role/:id', :controller => 'users', :action => 'role'
  


  #get 'people/show_upload/nil', :controller => 'people', :action => 'show_upload'



  match ':controller(/:action(/:id))', :via => [:get, :post]

  
end
