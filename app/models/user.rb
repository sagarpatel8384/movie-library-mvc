class User
  attr_reader :name, :hometown

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
  end

  def library
    Library.all.find { |library| library.user == self }
  end

  def add_movie=(movie)
    self.library.movies = movie
    movie.add_to_library(self)
  end

end
