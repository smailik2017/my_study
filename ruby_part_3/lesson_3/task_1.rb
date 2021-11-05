# frozen_string_literal: true

class Seo
  module Attributes
    attr_accessor :title, :description, :keywords
  end
end

class Page
  attr_accessor :title, :body
end

class News < Page
  attr_accessor :date

  include Seo::Attributes
end

class About < Page
  attr_accessor :phones, :address

  include Seo::Attributes
end

class PhotoCatalog < Page
  attr_accessor :photos
end

news = News.new
p "NEWS has: #{news.methods.select { |x| %i[title description keywords].include?(x) }}"

about = About.new
p "ABAUT has: #{about.methods.select { |x| %i[title description keywords].include?(x) }}"

photo_catalog = PhotoCatalog.new
p "PHOTO_CATALOG has: #{photo_catalog.methods.select { |x| %i[title description keywords].include?(x) }}"
