class Library
  attr_reader :user
  @@all = []

  def initialize(user)
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

end
