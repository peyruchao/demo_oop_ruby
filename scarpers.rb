require 'nokogiri'
require 'open-uri'

module Scarper
	
	class NewsLens
		LINK = 'http://www.thenewslens.com'
		NEWS_XPATH = "//main[@class='HolyGrail-content']//div[@class='post-list-item']"

		def self.getNews
			doc = getHtml(LINK)
			content = getContent(doc)
			titles = getTitles(content)
		end

		def self.getHtml(url)			
			doc = Nokogiri::HTML(open(url))
			#doc
		end

		def self.getContent(doc)			
			news = doc.xpath(NEWS_XPATH)
		end

		def self.getTitles(news)
			news.map{|x| x.text}
		end

	end
end
