Rails.application.routes.draw do

  root "home#index"
  resources :artefacts, only: ["index", "show"]
  resources :teams, only: ["show"]
  resources :guides, only: ["index", "show"]
  
  get "/search", to: "search#results" 

  namespace :admin do
    resources :guides
    resources :teams
    resources :artefacts
    resources :collections
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
