class LibraryUsersController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @libraries = @user.libraries
    render :index
  end

end
