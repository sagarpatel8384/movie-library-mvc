class Movie
  attr_reader :title, :genre
  attr_accessor :library
  @@all = []

  def initialize(title, genre)
    @title = title
    @@all << self
  end

end
