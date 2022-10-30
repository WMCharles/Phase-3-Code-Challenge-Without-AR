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

    # article && magazine methods
    def articles
        @articles
    end
  
    def magazines
        @magazines
    end

    # add_articles and topic_areas method
    def add_article (magazine, title)
        article = Article.new(self, magazine, title)
        @articles << article
        magazine.add_article(article)
    end
  
    def topic_areas
        topics = @magazines.map { |mag| mag.category}
        topics.uniq
    end
end