
class MovieFinderCli::Cli_Controller

  def call
    puts "Welcome to Movie finder"
    MovieFinderCli::Scraper.new.scrape_movies
    list_movies
    menu
  end

  def list_movies
    MovieFinderCli::Movie.all.each_with_index do |movie, i|
      puts " #{i+1}. #{movie.title}"
    end
  end

   def menu
    input = ""
    while input != "exit"
      input = gets.strip

      if input.to_i-1 <= MovieFinderCli::Movie.all.size
        movie = MovieFinderCli::Movie.all[input.to_i-1]

        puts "Title: #{movie.title}"
        puts "Rating: #{movie.rating}"
        puts "Genre: #{movie.genre}"
        puts "Released: #{movie.year}"
        puts "Synopsis: #{movie.synopsis}"
        puts "link: #{movie.url}"

        end
      end
      puts "Would you like to exit or view the list again?"
      while input = gets.strip.include?("list")
      list_movies
      menu
    end
  end
end
