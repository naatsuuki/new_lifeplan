Rails.application.routes.draw do
  resources :users, only: [:new, :create, :index]  # 必要なアクションのみを指定することを推奨します
  get 'welcome/index'
  get '/signup', to: 'users#new'  # 新規登録ページへのルート
  get '/login', to: 'sessions#new'  # ログインページへのルート
  post '/login', to: 'sessions#create'  # ログインフォームの送信処理
  delete '/logout', to: 'sessions#destroy'  # ログアウト処理
  root 'welcome#index'  # ルートパスの指定（必要に応じて変更）
end
