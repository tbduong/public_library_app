class LibraryUsersController < ApplicationController

  before_action :logged_in?, only: [:create]

  # display list of libraries that a specific user belongs to
  def index
    @user = User.find(params[:user_id])
    @libraries = @user.libraries

    render :index
  end

  # adds user to library
  def create
    @library = Library.find(params[:library_id])
    @library.users.push(current_user)

    redirect_to current_user
  end

end
