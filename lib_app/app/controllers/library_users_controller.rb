class LibraryUsersController < ApplicationController

  # display list of libraries that a specific user belongs to
  def index
    @user = User.find(params[:user_id])
    @libraries = @user.libraries

    render :index
  end

end
