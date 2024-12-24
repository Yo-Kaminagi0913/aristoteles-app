Rails.application.routes.draw do
  devise_for :users
  root to:'homes#index' # トップページをhomesコントローラーのindexアクションに設定
  resources :users, only: [:show, :edit, :update, :destroy] # ユーザー情報編集機能のルーティング
end
