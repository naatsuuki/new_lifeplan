# config/routes.rb
Rails.application.routes.draw do
  resources :users, only: [:index, :create, :destroy]
  resources :people, only: [:index, :create]  # people のルーティングを追加

  get 'welcome/index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'welcome#index'
end
