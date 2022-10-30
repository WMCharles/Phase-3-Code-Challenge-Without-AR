class Article 
    attr_accessor :author, :magazine, :title 
    @@all = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine 
        @title = title
        @@all << self.title
    end

    # all method
    def self.all 
        @@all
    end

    # author && magazine method
    def author 
        @author.name
    end

    def magazine
        @magazine.name
    end

end