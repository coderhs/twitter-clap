Rails.application.routes.draw do
  devise_for :users
  root 'sessions#app'
  get 'auth/:provider/callback', to: "sessions#create"
  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'
end

