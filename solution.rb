# Please copy/paste all three classes into this file to submit your solution!
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

class Magazine 
    
    attr_accessor :name, :category, :author
  
    @@all = []
    def initialize(name, category)
        @name = name 
        @category = category
        @@all << self
        @contributors = []
        @articles = []
    end

    # add all class methods
    def self.all 
        @@all
    end 

    def add_contributors(author)
        @contributors << author
        author.magazine = self
    end
  
    def contributors 
        @contributors.map { |author| author.name }
    end
  
    def contributing_authors
        @contributors.filter do |author|
            if author.articles.length > 2
                author.name
            else
                "None" 
            end
        end
    end
  
    def add_article(article)
        @articles << article.title 
    end
  
    def article_titles
        @articles
    end
  
    def find_by_name(name)
        @articles.find { |art| art.include?(name)}
    end
  
end

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