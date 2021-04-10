Rails.application.routes.draw do
  root 'articles#index'
  resources :users, only: [:new, :create]
  resources :articles, only: [:index, :new, :create, :show]
  resources :categories, only: [:show]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # get 'categories/:category', to: 'categories#index'
end
