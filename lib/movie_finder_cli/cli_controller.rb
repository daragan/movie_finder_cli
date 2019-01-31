
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

      if input.to_i <= MovieFinderCli::Movie.all.size && input.to_i != 0
        movie = MovieFinderCli::Movie.all[input.to_i-1]

        puts "Title: #{movie.title}"
        puts "Rating: #{movie.rating}"
        puts "Genre: #{movie.genre}"
        puts "Released: #{movie.year}"
        puts "Synopsis: #{movie.synopsis}"
        puts "link: #{movie.url}"

      else
        puts "could not compute"
      end

        puts "would you like to return to list?"
        puts "input Y or N"
        answer = gets.strip
        if ["Y", "Yes"].include?(answer.upcase)
          list_movies
        else ["N", "No"].include?(answer.upcase)
          exit!
        end
      end
    end
  end
