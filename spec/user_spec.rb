require 'spec_helper'

describe User do
  let(:user) { User.new("Sagar", "New York") }
  let(:library) { Library.new(user) }
  let(:genre) { Genre.new("Action") }
  let (:movie) { Movie.new("Die Hard", genre) }

  describe '#new' do

    it 'initializes with a name' do
     # Why don't I need to call the user method here?
      expect(user.name).to eq("Sagar")
    end

    it 'initializes with a hometown' do
      # Why don't I need to call the user method here?
      expect(user.hometown).to eq("New York")
    end

  end

  describe '#library' do
    it "returns user's library" do
      library # Why don't I need to call the user method here?
      expect(user.library).to eq(library)
    end
  end

  describe '#add_movie=' do

    before do
      library
      user.add_movie = movie
    end

    it "adds movie to user's library" do
      expect(user.library.movies).to include(movie)
    end

    it "adds user to movie's library array" do
      expect(movie.libraries).to include(user)
    end

  end

end
