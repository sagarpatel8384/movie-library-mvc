class Library
  attr_reader :user, :movies

  @@all = []

  def initialize(user)
    @user = user
    @@all << self
    @movies = []
  end

  def movies=(movie)
    @movies << movie
  end

  def self.all
    @@all
  end

end
