class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create!(allowed_params)
    redirect_to movies_path
  end

  def allowed_params
    params.require(:movie)
    params[:movie].permit(:title,:rating,:release_date)
  end

end
