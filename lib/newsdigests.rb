require_relative 'scarpers.rb'

newsfound = Scarper::NewsLens.gets_news

File.open('test.txt', 'w') do |file|  
  # use "\n" for two lines of text  
	newsfound.each do |x|
  		file.puts x.to_yaml 		
	end
end  
