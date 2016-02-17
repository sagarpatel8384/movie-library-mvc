class Genre
  attr_reader :genre

  def initialize(genre)
    @genre = genre
  end

  def movies
    Movie.all.select { |movie| movie.genre == self }
  end

end
