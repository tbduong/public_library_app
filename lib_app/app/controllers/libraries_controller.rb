class LibrariesController < ApplicationController

  # display list of libraries
  def index
    @libraries = Library.all
    render :index
  end

  # display the library creation form
  def new
    @library = Library.new
    render :new
  end

  # process library creation form data & create new library
  def create
    library_params = params.require(:library).permit(:name, :floor_count, :floor_area)
    @library = Library.create(library_params)

    redirect_to libraries_path
  end

end
