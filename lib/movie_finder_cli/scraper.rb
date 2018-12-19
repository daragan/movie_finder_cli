class MovieFinderCli::Scraper 
  
  def scrape_movies
    @doc = Nokogiri::HTML(open("https://www.imdb.com/search/title?groups=top_250&sort=user_rating,desc&view=advanced")) 
  end
  
end 