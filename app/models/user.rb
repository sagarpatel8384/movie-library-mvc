class User
  attr_reader :name, :hometown

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
  end

  def library
    Library.all.find { |library| library.user == self }
  end

  def movie_search(movie_title)
    omdb = OmdbAPI.new
    @movie = omdb.get_data(movie_title)
  end

  def add_movie
    movie_data = {}
    genre = @movie["Genre"].split(",").first

    movie_data[:title] = @movie["Title"]
    movie_data[:genre] = Genre.new(genre)
    movie_data[:year] = @movie["Year"]
    movie_data[:rated] = @movie["Rated"]
    movie_data[:score] = @movie["Metascore"]

    movie = Movie.new(movie_data)

    self.library.movies = movie
    movie.add_to_library(self)
  end

end
