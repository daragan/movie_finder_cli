class MovieFinderCli::Cli_Controller 
  
  def call 
    puts "Welcome to Movie finder"
    puts "Which movie would you like to find out more about?"
    MovieFinderCli::Scraper.new.scrape_movies
    list_movies
  end 
  
  def list_movies 
    MovieFinderCli::Movie.all.each_with_index do |movie, i|
      puts "#{i+1}. #{movie.title}"
    end
  end 
  
end 