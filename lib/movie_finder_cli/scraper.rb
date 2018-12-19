class MovieFinderCli::Scraper 
  
  
  def scrape_movies
    @doc = Nokogiri::HTML(open("https://www.imdb.com/search/title?groups=top_250&sort=user_rating,desc&view=advanced")) 
    
    @doc.search("div.lister-item-content").each do |movie_li|
      
      movie = MovieFinderCli::Movie.new 
      
      movie.url = movie_li.search("h3.lister-item-header a").attr("href") 
      movie.title = movie_li.search("h3.lister-item-header").text
      movie.year = movie_li.search("h3.lister-item-year text-muted unbold").text
      movie.synopsis = movie_li.search("p.text-muted").text 
      movie.genre = movie_li.search("p.genre").text
      
      movie.save 
    end 
  end
  
end 