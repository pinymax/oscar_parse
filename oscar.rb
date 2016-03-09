require "rubygems"
require "nokogiri"
require "open-uri"

url = "https://en.wikipedia.org/wiki/Academy_Award_for_Best_Picture"
doc = Nokogiri::HTML(open(url))

movies = doc.css(".wikitable:nth-child(136) td:nth-child(1)")

puts "***************************"
count = 1
puts "Candidates: "
movies.each do |movie|
puts "#{count} - #{movie.text} "
count += 1
end

puts "***************************"

puts "And the Oscar goes to ..."
sleep(1)
puts "."
sleep(1)
puts ".."
sleep(1)
puts "..."
puts "#{movies[0].text}"
