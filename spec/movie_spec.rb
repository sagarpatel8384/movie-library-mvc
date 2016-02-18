require 'pry'
describe Movie do
  let (:sagar) { User.new("Sagar", "New York") }
  let (:action) { Genre.new("Action") }
  let (:independence_day) { Movie.new("Independence Day", action) }

  describe '.new' do
    it 'initializes an instance of a movie with a title' do
      expect(independence_day.title).to eq("Independence Day")
    end

    it 'initializes an instance of a movie with a genre object' do
      expect(independence_day.genre).to eq(action)
    end

    it 'initializes an instance of a movie with an empty library array' do
      expect(independence_day.libraries.class).to eq(Array)
    end
  end

  describe '.all' do
    it 'adds every new instance of Movie to class method all' do
      independence_day
      expect(Movie.all).to include(independence_day)
    end
  end

  describe '#add_to_library' do
    it "should add user object to library" do
      independence_day.add_to_library(sagar)
      expect(independence_day.libraries).to include(sagar)
    end
  end

end
