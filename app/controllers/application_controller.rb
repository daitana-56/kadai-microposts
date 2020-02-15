class ApplicationController < ActionController::Base
  
  include SessionsHelper
  
  private
  
  #ログイン状態確認
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  #カウンタ
  def counts(user)
    @count_microposts = user.microposts.count
  end
end
