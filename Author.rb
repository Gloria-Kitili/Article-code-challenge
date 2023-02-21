class Author
    attr-reader :name

    def initialize(name)
        @name = name 
        @articles = []
    end

    def articles
        @articles.dup.freeze
    end

    def magazines
        @articles.map(&:magazines).uniq
    end 
    
    def add_article(magazine, title)
        article = Article.new(self, magazine, title)
        @articles << articles
        magazine.add_contributor(self)
        article 
    end 

    def topic_areas
        magazines.map(&:category).uniq
    end
end 