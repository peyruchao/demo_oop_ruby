require_relative 'scarpers.rb'

newsfound = Scarper::NewsLens.gets_news

newsfound.each do |x|
  puts x
end
