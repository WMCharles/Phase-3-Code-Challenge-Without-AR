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
    
end