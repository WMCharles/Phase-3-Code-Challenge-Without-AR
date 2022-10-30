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
  
end