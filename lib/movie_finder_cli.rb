require "movie_finder_cli/version"
require 'nokogiri'
require 'open-uri'
require 'pry'

module MovieFinderCli
  class Error < StandardError; end
  # Your code goes here...
  require "movie_finder_cli/cli_controller.rb"
  require "movie_finder_cli/movie.rb"
  require "movie_finder_cli/scraper.rb"
  require "movie_finder_cli/version.rb"
end
