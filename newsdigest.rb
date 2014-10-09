require_relative 'scarpers.rb'

newsfound = Scarper::NewsLens.getNews

newsfound.each do |x|
  puts x
end