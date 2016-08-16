class LibrariesController < ApplicationController

  def index
    @libraries = Library.all
    render :index
  end

  def new
    @library = Library.new
    render :new
  end

end
