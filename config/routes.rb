Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  root 'welcome#index'

  resources :users, :donations
  resources :sessions, only: [:new, :create, :destroy]

  resources :user do
    resources :donations, only: [:new, :create]
  end
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # get '/signup' => 'users#new'
  # get '/logout' => 'sessions#destroy'


end
