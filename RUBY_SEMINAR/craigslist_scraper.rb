require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(open("https://boston.craigslist.org/search/bik"))

# Show all a tags within span tags with class="txt"
# puts doc.css("span.txt a")

# Search for the href path of the first link
path = doc.css("a.hdrlnk")[0]['href']
# puts path

# Access description of the first item for sale with at_css
item = Nokogiri::HTML(open("https://boston.craigslist.org#{path}"))
description = item.at_css("section#postingbody").text

# Print description to text file
fname = "craigslist.html"
file = File.open(fname, "w")
file.puts doc
file.close

title = []
price = []
description = []

# Search for nodes by css
doc.css("span.txt").each do |link|
    title << link.css("a.hdrlnk").text
    price << link.css("span.price").text
end

puts title
puts price