class UsersController < ApplicationController
  def new
    @user = User.new  # 新しいユーザーオブジェクトを作成してビューに渡す
  end

  def index
    @users = User.all  # すべてのユーザーを取得してビューに渡す
  end
end
