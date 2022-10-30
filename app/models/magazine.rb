class Magazine 
    
    attr_accessor :name, :category, :author
  
    @@all = []
    def initialize(name, category)
        @name = name 
        @category = category
        @@all << self.name
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