Rails.application.routes.draw do
  get "log_in" => 'sessions#new'
  post "log_in" => 'sessions#create'
  delete "log_in" => 'sessions#destroy'
  get "sign_up" => 'users#new'
  root "sessions#new"

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
