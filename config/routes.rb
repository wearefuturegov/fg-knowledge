Rails.application.routes.draw do

  get "artefacts", to: "artefacts#index"

  namespace :admin do
    resources :teams
    resources :artefacts
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
