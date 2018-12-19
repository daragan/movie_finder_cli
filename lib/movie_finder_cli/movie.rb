class MovieFinderCli::Movie 
  
  attr_accessor :title, :content, :summary, :date, :genre, :director
  
  @@all = []
  
  def self.all 
    @@all
  end 
  
  def save 
    @@all << self 
  end 
  
end 