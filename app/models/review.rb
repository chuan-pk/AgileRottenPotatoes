class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :moviegoer

  validates :movie_id, :presence => true
  validates_associated :movie

end