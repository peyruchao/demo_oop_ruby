require 'nokogiri'
require 'open-uri'
module Scarper
  # class for NewsLens
  class NewsLens
    LINK = 'http://www.thenewslens.com'
    NEWS_XPATH = "//main[@class='HolyGrail-content']
                  //div[@class='post-list-item']"
    def self.gets_news
      doc = gets_html(LINK)
      content = gets_content(doc)
      gets_titles(content)
    end
    def self.gets_html(url)
      Nokogiri::HTML(open(url))
    end
    def self.gets_content(doc)
      doc.xpath(NEWS_XPATH)
    end
    def self.gets_titles(news)
      news.map(&:text)
    end
  end
end
