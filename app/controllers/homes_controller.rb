class HomesController < ApplicationController
  def index
    # ログイン済みの場合ログイン後のページにリダイレクト
    if user_signed_in?
      redirect_to user_path(current_user.id)
    else
      # ログインしていない場合ゲスト向けトップページを表示
      render :index
    end
  end
end
