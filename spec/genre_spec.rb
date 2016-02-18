require 'spec_helper'

describe Genre do
  let(:action) { Genre.new("Action") }
  let(:die_hard) { Movie.new("Die Hard", action) }

  describe ".new" do
    it "initialize instance of Genre class with genre" do
      expect(action.genre).to eq("Action")
    end
  end

  describe "#movies" do
    it "should return a list of movies matching the given genre" do
      die_hard # Why do I have to call this?
      expect(action.movies).to include(die_hard)
    end
  end

end
