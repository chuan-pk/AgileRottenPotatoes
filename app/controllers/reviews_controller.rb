class ReviewsController < ApplicationController
  before_action :has_moviegoer_and_movie, :only => [:new, :create]

  protected
  def has_moviegoer_and_movie
    unless @current_user
      flash[:warning] = 'You must be logged in to create a review.'
      redirect_to '/'
    end
    unless (@movie = Movie.where(:id => params[:movie_id]))
      flash[:warning] = 'Review must be for an existing movie.'
      redirect_to movies_path
    end
  end

  public
  def new
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new
  end

  def create
    @moviegoer = @current_user
    @movie = Movie.find(params[:movie_id])
    @review = Review.new(allowed_params)
    @review.movie_id = @movie.id
    @review.moviegoer_id = @moviegoer.id
    @review.save
    redirect_to movie_path(@movie)
  end

  def allowed_params
    params.require(:review).permit(:potatoes, :comments)
  end

end
