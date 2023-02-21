class Article
    attr_reader :title :author :magazine

    @@all = [] 

    def initialize(author,magazine,title)
        @title = title
        @author = author
        @magazine = magazine
        @@all << self
    end

    def self.all
        @@all.dup.freeze
    end
end