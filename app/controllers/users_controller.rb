class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
  
    if @user.save
      redirect_to root_path, notice: 'ユーザーを登録しました。'
    else
      # エラー処理を記述する
      render 'welcome/index' # または他の適切な処理
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :birth_year)
  end
end
