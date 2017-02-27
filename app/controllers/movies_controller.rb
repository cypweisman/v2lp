class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render :index
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
       redirect_to showtimes_path
    else
      @errors = @movie.errors.full_messages
      render :new
    end
  end

  def movie_params
    params.require(:movie).permit(:title, :runtime)
  end

end
