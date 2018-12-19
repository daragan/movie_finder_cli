class MovieFinderCli::Movie 
  
  attr_accessor :title, :content, :synopsis, :date, :genre, :director, :href
  
  @@all = []
  
  def self.all 
    @@all
  end 
  
  def save 
    @@all << self 
  end 
  
end 