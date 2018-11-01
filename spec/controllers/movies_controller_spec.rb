require 'rails_helper'

RSpec.describe MoviesController, :type => :controller do

  describe "Movies index" do
    it "Should render correct template" do
      get :index
      expect(response).to render_template("index")
    end
    it "Should sort by aphabet" do
      movie1 = Movie.create!({title: "Star Wars", release_date: "25/4/1977", rating: "PG"})
      movie2 = Movie.create!({title: "Aladdin", release_date: "25/11/1992", rating: "G"})
      movies = Movie.all.sort_by{|m| m.title}
      expect(movies[0].title).to eq(movie2.title)
      expect(movies[1].title).to eq(movie1.title)
    end
  end

  describe "New movie" do    
    it "Should render correct template" do
      get :new
      expect(response).to render_template("new")
    end
    it "Shoud save POST request to Database" do
      post :create, :params => {:movie => {title: "Star Wars", release_date: "25/4/1977", rating: "PG"}}
      movie = Movie.find(1)
      expect(movie.reload.title).to eq('Star Wars')
    end
    it "Should redirect to movies_path" do
      post :create, :params => {:movie => {title: "Star Wars", release_date: "25/4/1977", rating: "PG"}}
      expect(response).to redirect_to('/movies/1')
    end
  end

  describe "Show movie" do
    it "Should render correct template" do
      movie = Movie.create!({title: "Star Wars", release_date: "25/4/1977", rating: "PG"})
      get :show, :params => {id: movie.id}
      expect(response).to render_template("show")
    end
  end
    
  describe "Delete movie" do
    it "Should recieve DELETE request" do
      movie = Movie.create!({title: "Star Wars", release_date: "25/4/1977", rating: "PG"})
      delete :destroy, :params => {id: movie.id}
      expect(Movie.all.count).to eq(0)
    end
    it "Should redirect to movies_path" do
      movie = Movie.create!({title: "Star Wars", release_date: "25/4/1977", rating: "PG"})
      delete :destroy, :params => {id: movie.id}
      expect(response).to redirect_to(movies_path)
    end
  end

  describe "Edit movie" do
    it "Should recieve PUT request and save update in database" do
      movie = Movie.create!({title: "Spirit Away", release_date: "20/9/2001", rating: "PG"})
      expect(movie.reload.title).to eq('Spirit Away')
      put :update, :params => {:id => movie.id, :movie => {title: "Spirited Away"}}
      expect(movie.reload.title).to eq('Spirited Away')
    end
    it "Should render correct template" do
      movie = Movie.create!({title: "Spirit Away", release_date: "20/9/2001", rating: "PG"})
      get :edit, :params => {id: movie.id}
      expect(response).to render_template("edit")
    end
    it "Should redirect to edit_movie_path" do
      movie = Movie.create!({title: "Spirit Away", release_date: "20/9/2001", rating: "PG"})
      put :update, :params => {:id => movie.id, :movie => {title: "Spirited Away"}}
      expect(response).to redirect_to(movie_path(movie))
    end
  end
  
end