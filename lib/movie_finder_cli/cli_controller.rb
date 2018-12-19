class MovieFinderCli::Cli_Controller 
  
  def call 
    puts "Welcome to Movie finder"
    MovieFinderCli::Scraper.new.scrape_movies
    list_movies
  end 
  
  def list_movies 
    MovieFinderCli::Movie.all.each_with_index do |movie, i|
      puts "#{i+1}. #{movie.title}"
    end
  end 
  
   def menu
    input = ""
    while input != "exit"
      puts "Which movie would you like to find out more about?"
      input = gets.strip

      if input.to_i-1 <= MovieFinderCli::Movie.all.size
        movie = MovieFinderCli::Movie.all[input.to_i-1]

        puts "Title: #{movie.title}"
        puts "Genre: #{movie.genre}"
        puts "Released: #{movie.year}"
        puts "Synopsis: #{movie.synopsis}"

        puts "Would you like to find out more?"
        answer = gets.strip

        if ["Y", "YES"].include?(answer.upcase)
          # how do I get the content for this story?
          movie.open_in_browser
        end
      end
      puts "Would you like to exit or list again?"
      input = gets.strip
    end
  end
end 