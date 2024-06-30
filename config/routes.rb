Rails.application.routes.draw do
  get 'people/new'
  post 'people/create'
  resources :users, only: [:new, :create, :index]  # 必要なアクションのみを指定
  get 'welcome/index'
  get '/signup', to: 'users#new'  # 新規登録ページへのルート
  get '/login', to: 'sessions#new'  # ログインページへのルート
  post '/login', to: 'sessions#create'  # ログインフォームの送信処理
  delete '/logout', to: 'sessions#destroy'  # ログアウト処理
  root 'welcome#index'  # ルートパスの指定（必要に応じて変更）
end
