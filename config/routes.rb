Rails.application.routes.draw do

  root "home#index"

  # gated access
  get 'login', to: 'logins#new'
  get 'login/create', to: 'logins#create', as: :create_login

  # content
  resources :artefacts, only: ["index", "show"]
  resources :teams, only: ["show"]
  resources :guides, only: ["index", "show"]
  get "/search", to: "search#results" 
  
  # for fae
  namespace :admin do
    resources :guides
    resources :teams
    resources :artefacts
    resources :collections
  end
  mount Fae::Engine => '/admin'

end
