Rails.application.routes.draw do

  root "home#index"
  resources :artefacts, only: ["index"]
  resources :teams, only: ["show"]

  namespace :admin do
    resources :teams
    resources :artefacts
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
