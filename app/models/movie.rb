class Movie
  attr_reader :title, :genre, :release_year, :rating, :score, :libraries
  @@all = []

  def initialize(movie_data)
    @title = movie_data[:title]
    @genre = movie_data[:genre]
    @release_year = movie_data[:year]
    @rating = movie_data[:rated]
    @score = movie_data[:score]

    @libraries = []
    @@all << self
  end

  def add_to_library(user)
    @libraries << user
  end

  def self.all
    @@all
  end

end
