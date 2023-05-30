class Author
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
    def articles
      Article.all.select { |article| article.author == self }
    end
  
    def magazines
      articles.map { |article| article.magazine }.uniq
    end
  
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
    def topic_areas
      magazines.map { |magazine| magazine.category }.uniq
    end
  end

  
  author1 = Author.new("John Grace")
author2 = Author.new("Ruby Smith")

author1.add_article(magazine1, "Article 1")
author1.add_article(magazine1, "Article 2")
author2.add_article(magazine1, "Article 3")
author1.add_article(magazine2, "Article 4")

author1.articles               
author1.magazines               
author1.topic_areas             








