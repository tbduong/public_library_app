class SessionsController < ApplicationController

  # display login form
  def new
    @user = User.new
    render :new
  end

  # process login form data & create new session
  def create
    user_params = params.require(:user).permit(:email, :password)
    @user = User.confirm(user_params)
    if @user
      login(@user)
      redirect_to @user
    else
      redirect_to login_path
    end
  end

end
