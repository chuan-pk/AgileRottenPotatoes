require "rails_helper"

RSpec.describe Movie, :type => :model do
  describe "Movie model" do
    it 'calls the model method to create movie' do
      movie = Movie.create!(:title => 'Star Wars', :release_date => '25/4/1977', :rating => 'PG')

      expect(movie.reload.title).to eq('Star Wars')
      expect(movie.reload.release_date).to eq('25/4/1977')  
      expect(movie.reload.rating).to eq('PG')   
    end
  end
end