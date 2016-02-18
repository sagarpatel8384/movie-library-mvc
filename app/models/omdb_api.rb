class OmdbAPI
  def get_data(movie_name)
    uri = URI.parse("http://www.omdbapi.com/?t=#{movie_name}")
    response = Net::HTTP.get_response(uri)
    movie_data = JSON.parse(response.body)
  end
end
