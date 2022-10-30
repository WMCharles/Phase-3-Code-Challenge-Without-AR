class Author
    attr_reader :name
    
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    # add_articles and topic_areas method
    def add_article (magazine, title)
        Article.new(self, magazine, title)
    end

    # articles, magazines, && topic_areas methods
    def articles
        Article.all.select { |article| article.author == self}
    end
  
    def magazines
      articles.map(&:magazine).uniq
    end

    def topic_areas
        articles.collect { |art| art.magazine.category}.uniq
    end
end