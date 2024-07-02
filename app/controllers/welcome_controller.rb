# app/controllers/welcome_controller.rb
class WelcomeController < ApplicationController
  def index
    @users = User.all
    @user = User.new  # 追加: 新規ユーザーのフォーム用インスタンス
  end
end
