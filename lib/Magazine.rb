class  Magazine 
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

     def article_titles
        Article.all.select { |article| article.magazine == self }.map { |article| article.title}
     end 

     def contributing_authors 
        author_counts = {}
        Article.all.each do |article|
        if article.magazine == self
            author_counts[article.author] || 0
            author_counts[article.author] += 1
        end
    end
end
end

    magazine1 = Magazine.new("Tech World", "Fashion designs")
    magazine2 = Magazine.new("Beauty Tips", "Nail Gel tips")
    magazine3 = Magazine.new("Travel Journal", "Travel Packages")
  
    
    