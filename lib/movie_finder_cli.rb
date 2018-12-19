require "movie_finder_cli/version"
require 'nokogiri'
require 'open-uri'


module MovieFinderCli
  class Error < StandardError; end
  # Your code goes here...
  require "movie_finder_cli/cli_controller"
  require "movie_finder_cli/movie"
  require "movie_finder_cli/scraper"
  require "movie_finder_cli/version"
end
