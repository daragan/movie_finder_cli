class MovieFinderCli::Cli_Controller 
  
  def call 
    puts "Welcome to Movie finder"
    MovieFinderCli::Scraper.new.scrape_movies
    list_movies
  end 
  
  def list_movies 
    MovieFinderCli::Movie.all.each_with_index |movie, i|
      puts "#{i+1}. #{movie.title}"
    end
  end 
  
end 