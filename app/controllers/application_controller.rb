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
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    @count_likes = user.favoriting.count
  end
end
