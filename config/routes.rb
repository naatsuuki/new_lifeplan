Rails.application.routes.draw do
  resources :users, only: [:index, :create, :destroy]  # 必要なアクションのみを指定
  resources :people, only: [:new, :create]             # 必要なアクションのみを指定

  get 'welcome/index', as: 'welcome'  # 名前付きルートを設定
  get '/signup', to: 'users#new', as: 'signup'  # 名前付きルートを設定
  get '/login', to: 'sessions#new', as: 'login'  # 名前付きルートを設定
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'  # 名前付きルートを設定
  root 'welcome#index'
end
