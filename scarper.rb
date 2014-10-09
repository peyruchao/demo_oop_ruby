require 'nokogiri'
require 'open-uri'

module Scarper
	
	class NewsLens
		LINK = 'http://www.thenewslens.com'
		NEWS_XPATH = "//main[@class='HolyGrail-content']//div[@class='post-list-item']"

		def self.getHtml(url)			
			doc = Nokogiri::HTML(open(url))
			#doc
		end


	end
end
