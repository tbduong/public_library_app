class UsersController < ApplicationController

  # grab the users
  def index
    @users = User.all
    render :index
  end

  # display the user signup form
  def new
    @user = User.new
    render :new
  end

  # process signup form data & create new user
  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
    @user = User.create(user_params)

    redirect_to root_path
  end

end
