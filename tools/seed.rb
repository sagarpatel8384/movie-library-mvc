# USERS
@sagar = User.new("Sagar", "New York")
@sagars_library = Library.new(@sagar)

@john = User.new("John", "Brooklyn")
@johns_library = Library.new(@john)

# GENRES
@action = Genre.new("action")

# MOVIES
@die_hard = Movie.new("Die Hard", @action)
@independence_day = Movie.new("Independence Day", @action)
@rocky = Movie.new("Rocky", @action)

# ADD MOVIES TO LIBRARY
@sagar.add_movie = @die_hard
@sagar.add_movie = @independence_day
@sagar.add_movie = @rocky

@john.add_movie = @die_hard
@john.add_movie = @rocky
