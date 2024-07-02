# app/helpers/sessions_helper.rb

module SessionsHelper
  # 現在のユーザーがログインしているかどうかを返す
  def logged_in?
    !current_user.nil?
  end

  # セッションに記録されているユーザーを返す
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
  