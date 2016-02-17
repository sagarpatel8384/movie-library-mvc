require 'pry'
require_relative '../config/environment'
require_relative 'seed'

def reload!
  load('../movie-library-mvc/config/environment.rb')
end

Pry.start # Uninitialized Constant Pry unless I require pry.
