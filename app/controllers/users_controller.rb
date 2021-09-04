class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to mypage_path, success: "登録完了しました"
    else
      flash.now[:danger] = "登録失敗しました"
      render :new
    end
  end
  
  def mypage
     @user = current_user
     
  end
  
  private
  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
  end
  
  def log_in(user)
    session[:user_id] = user.id
  end
end
