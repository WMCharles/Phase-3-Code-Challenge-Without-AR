class Author
    attr_reader :name
    attr_accessor :magazine
  
    def initialize(name)
        @name = name
        @articles = []  
        @magazines = []
  
    end
end