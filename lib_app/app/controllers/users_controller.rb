class UsersController < ApplicationController

# gives us all of our users
  def index
      @users = User.all
      render :index
  end

end
