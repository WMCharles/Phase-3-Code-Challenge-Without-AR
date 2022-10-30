class Article 
    attr_accessor :author, :magazine, :title 
    @@all = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine 
        @title = title
        @@all << self.title
    end
end