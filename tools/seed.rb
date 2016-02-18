# USERS
@sagar = User.new("Sagar", "New York")
@sagars_library = Library.new(@sagar)

@john = User.new("John", "Brooklyn")
@johns_library = Library.new(@john)

@sagar.movie_search("Independence Day")
@sagar.add_movie
