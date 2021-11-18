# frozen_string_literal: true

require 'set'

##
# Класс ключевых слов. Все ключевые слова прописными буквами
class Keywords
  attr_accessor :keyword

  def initialize
    @keyword = Set.new
  end

  def add_keyword(keyword)
    @keyword << keyword.upcase
  end
end

my_keywords = Keywords.new
my_keywords.add_keyword('test')
my_keywords.add_keyword('test')
my_keywords.add_keyword('test2')
my_keywords.add_keyword('test')
my_keywords.add_keyword('test1')
my_keywords.add_keyword('test')
p my_keywords
