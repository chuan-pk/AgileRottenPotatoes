require 'rails_helper'

RSpec.describe MoviesController, :type => :controller do

  describe "GET index" do
    it "Should render correct template" do
      get :index
      expect(response).to render_template("index")
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
      expect(response).to redirect_to(movies_path)
    end
  end

end