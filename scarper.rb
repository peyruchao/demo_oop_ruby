require 'nokogiri'
require 'open-uri'

module Scarper
	
	class NewsLens
		LINK = 'http://www.thenewslens.com'
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
