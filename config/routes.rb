# config/routes.rb

Rails.application.routes.draw do
  get 'age_tables/index'
  resources :users, only: [:index]  # ユーザー情報のルーティング
  resources :people, only: [:index] # 登録一覧のルーティング
  resources :age_tables, only: [:index] # 過去履歴のルーティング

  get 'welcome/index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'welcome#index'
end
