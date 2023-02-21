class  Magazine 
    attr_reader :name :category

    @@all = []

    def initialize(name, category)
        @name = name 
        @category = category
        @contributors = []
        @@all << self 
    end 

    def self.all
        @@all.dup.freeze
    end

    def self.find_by_name(name)
        @@all.find{ |magazine| magazine.name == name }
    end 

    def name=(new_name)
        @name = new_name
    end

    def category=(new_category)
        @category = new_category
    end

    def contributors
        @contributors.dup.freeze
    end 

    def article_titles
        @contributors << author 
    end 

    def article_titles 
        @contributors.flat_map {|author| author.articles.select { |article| article.magazine == self} } 
    end

    def contributing_authors
        @contributors.select { |author| author.articles.count { |article| article.magazine == self } >2 }
    end
end