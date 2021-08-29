class SessionsController < ApplicationController
  def new
  end
  
  def create
   user = User.find_by(email: params[:sessions][:email])
   if user && user.authenticate(params[:sessions][:password])
    log_in(user)
    redirect_to action: :login_user_page, success: "ログインしました"
   else
    flash.now[:danger] = "ログインに失敗しました"
    render :new
   end
  end
  
  def login_user_page
  end
  
  def destroy
    log_out
    redirect_to root_path, info: 'ログアウトしました'
  end
  
  private
  def log_in(user)
    session[:user_id] = user.id
  end
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
