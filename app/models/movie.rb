class Movie
  attr_reader :title, :genre, :libraries
  @@all = []

  def initialize(title, genre)
    @title = title
    @genre = genre
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
