Rails.application.routes.draw do
  devise_for :users
  root to:'homes#index' # トップページをhomesコントローラーのindexアクションに設定
  resources :users, only: [:show, :edit, :update, :destroy] # ユーザー情報編集機能のルーティング
  resources :stories, only: [:new, :create, :show] do
    resources :story_questions, only: [:new, :create]
  end
end
