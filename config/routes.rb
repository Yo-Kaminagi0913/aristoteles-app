Rails.application.routes.draw do
  devise_for :users
  root to:'homes#index' # トップページをhomesコントローラーのindexアクションに設定
end
