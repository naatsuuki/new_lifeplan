class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
  
    if @user.save
      redirect_to users_path, notice: 'ユーザーを登録しました。'
    else
      # エラー処理を記述する
      @users = User.all
      flash.now[:alert] = 'ユーザーの登録に失敗しました。'
      render 'welcome/index' # または適切なエラーページ
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: 'ユーザーを削除しました。'
  end

  private

  def user_params
    params.require(:user).permit(:name, :birth_year)
  end
end
