Rails.application.routes.draw do
  resources :users, only: [:index, :create, :destroy]  # createアクションを追加
  resources :people, only: [:new, :create]

  get 'welcome/index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'welcome#index'
end
