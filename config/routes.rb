Rails.application.routes.draw do
  resources :users, only: [:index, :create, :destroy]  # ユーザー情報のルーティング
  resources :people, only: [:index, :new, :create]    # 登録一覧のルーティング
  resources :age_tables, only: [:index, :new, :create, :destroy] # 過去履歴のルーティング

  get 'welcome/index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'welcome#index'
end
