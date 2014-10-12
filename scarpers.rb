require 'nokogiri'
require 'open-uri'
module Scarper
  class NewsLens
    LINK = 'http://www.thenewslens.com'
    NEWS_XPATH = "//main[@class='HolyGrail-content']//div[@class='post-list-item']"
    def self.gets_news
      doc = gets_html(LINK)
      content = gets_content(doc)
      titles = gets_titles(content)
    end
    def self.gets_html(url)			
      doc = Nokogiri::HTML(open(url))
    end
    def self.gets_content(doc)
      news = doc.xpath(NEWS_XPATH)
    end
    def self.gets_titles(news)
      news.map { |x| x.text }
    end
  end
end
