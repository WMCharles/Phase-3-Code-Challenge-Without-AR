require_relative './article.rb'
require_relative './author.rb'
require_relative './magazine.rb'

author = Author.new('Charles')
# puts author.name

magazine = Magazine.new('MARCA', 'Football')
another_magazine = Magazine.new("ESPN", "Soccer")
# puts magazine.name
# puts magazine.category
# p Magazine.all 

article = Article.new(author, magazine, "Hey")
another_article = Article.new(author, magazine, "Ho")
another_another_article = Article.new(author, magazine, "Haha")
# puts article.title
# p Article.all

# puts article.author
# puts article.magazine

p author.magazines

# p magazine.articles

author.add_article(another_magazine, "hello")
# p author.topic_areas

# p Article.all 
# p magazine.article_titles
# p Magazine.find_by_name("ESPN")
# p magazine.contributors
# p magazine.article_titles
# p magazine.contributing_authors