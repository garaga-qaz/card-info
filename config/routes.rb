Rails.application.routes.draw do
  # devise_for :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'teams#index'
  resources :teams, only: [:index, :create]
end
