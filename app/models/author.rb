class Author
    attr_reader :name
    attr_accessor :magazine
  
    def initialize(name)
        @name = name
        @articles = []  
        @magazines = []
    end

    # methods for adding author's articles and magazines independently
    def add_art(article)
        @articles << article.title
        article.author = self
    end
  
    def add_mag(magazine)
        @magazines << magazine 
        magazine.author = self
    end
end