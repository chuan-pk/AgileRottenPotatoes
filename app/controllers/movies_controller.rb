class MoviesController < ApplicationController

  def index
    @movies = Movie.all.sort_by{|m| m.title}
  end

  def show
    id = params[:id]
    @movie = Movie.find(id)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(allowed_params)
    if @movie.save
      redirect_to movie_path(@movie)      
    else
      render 'new'
    end
  end

  def allowed_params
    params.require(:movie).permit(:title, :rating, :release_date, :description)
  end

  def edit
    @movie = Movie.find(params[:id])  
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(allowed_params)
      redirect_to movie_path(@movie)
    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end
  
end
