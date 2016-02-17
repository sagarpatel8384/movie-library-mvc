class User
  attr_reader :name, :hometown

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
  end

  def show_library
    Library.all.find { |library| library.user == self }
  end

end
