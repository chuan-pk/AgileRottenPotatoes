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
  end

end