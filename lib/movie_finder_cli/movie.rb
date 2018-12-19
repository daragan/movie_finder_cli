class MovieFinderCli::Movie 
  
  attr_accessor :title, :content, :synopsis, :year, :genre, :url
  
  @@all = []
  
  def self.all 
    @@all
  end 
  
  def save 
    @@all << self 
  end 
  
end 