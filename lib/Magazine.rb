class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.find_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end
  
    def contributors
      Article.all.select { |article| article.magazine == self }.map { |article| article.author }
    end
  
    def article_titles
      Article.all.select { |article| article.magazine == self }.map { |article| article.title }
    end
  
    def contributing_authors
      author_counts = Hash.new(0)
      contributors.each { |author| author_counts[author] += 1 }
      author_counts.select { |author, count| count > 2 }.keys
    end
  end
  

  magazine1 = Magazine.new("Magazine A", "Category A")
magazine2 = Magazine.new("Magazine B", "Category B")

magazine1.contributing_authors  
magazine1.article_titles       
magazine2.article_titles  