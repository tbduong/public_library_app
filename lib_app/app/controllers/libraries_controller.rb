class LibrariesController < ApplicationController

  # display list of libraries
  def index
    @libraries = Library.all
    render :index
  end

end
