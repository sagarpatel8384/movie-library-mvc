require 'spec_helper'

describe Library do
  let(:sagar) { User.new("Sagar", "New York") }
  let(:sagars_library) { Library.new(sagar) }
  let(:action) { Genre.new("Action") }
  let(:independence_day) { Movie.new("Independence Day", action) }

  describe '.new' do
    it 'instance of library to initialize with a user object' do
      expect(sagars_library.user).to eq(sagar)
    end

    it 'instance of library to initialize with an empty movies array' do
      expect(sagars_library.movies.class).to eq(Array)
    end
  end

  describe '#movies=' do
    it "adds movie to movies array" do
      sagars_library.movies = independence_day
      expect(sagars_library.movies).to include(independence_day)
    end
  end

end
