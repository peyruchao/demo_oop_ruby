require_relative 'scarper.rb'

newsfound = Scarper::NewsLens.getNews

newsfound.each do |x|
  puts x
end