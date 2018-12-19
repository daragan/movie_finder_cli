class MovieFinderCli::Movie 
  
  attr_accessor :title, :content, :synopsis, :year, :genre, :url
  
  @@all = []
  
  def content 
    @content ||= MovieFinderCli::Scraper.new(url).scrape_content
  end 
  
  def self.all 
    @@all
  end 
  
  def save 
    @@all << self 
  end 
  
end 