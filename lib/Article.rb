class Article
    attr_reader :author, :magazine, :title
  
    @@all = []
  
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
  end

article1 = Article.new("Vallery Molly",  "Fashion designs", "How to dress to your body type")
article2 = Article.new("Tracy Michael",  "Beauty Tips", "How to style my hair")
