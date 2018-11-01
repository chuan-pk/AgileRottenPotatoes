class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    id = params[:id]
    @movie = Movie.find(id)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create!(allowed_params)
    redirect_to movie_path(@movie)
  end

  def allowed_params
    params.require(:movie).permit(:title, :rating, :release_date, :description)
  end

  def edit
    @movie = Movie.find(params[:id])  
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update_attributes!(allowed_params)
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end
  
end
