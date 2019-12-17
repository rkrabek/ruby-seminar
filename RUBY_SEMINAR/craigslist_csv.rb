require 'nokogiri'
require 'open-uri'
require 'csv'

# Fetch and parse HTML document
doc = Nokogiri::HTML(open("https://boston.craigslist.org/search/bik"))

title = []
price = []
description = []
paths = []
url = []

doc.css("span.txt").each do |link|
    paths << link.css("a")[0]['href']
end

puts "accessing links"

# for path in paths do 
#     item_page = Nokogiri::HTML(open("https://boston.craigslist.org#{path}"))
#     title << item_page.css("span.postingtitletext").text
#     price << item_page.css("span.price").text
#     description << item_page.css("section#postingbody").text
#     url << "https://boston.craigslist.org#{path}"
# end

# paths.each_with_index do |path, index|
#     item_page = Nokogiri::HTML(open("https://boston.craigslist.org#{path}"))
#     puts "Accessing page #{index}"
#     title << item_page.css("span.postingtitletext").text
#     price << item_page.css("span.price").text
#     description << item_page.css("section#postingbody").text
#     url << "https://boston.craigslist.org#{path}"
# end

for i in 0..3 do 
    item_page = Nokogiri::HTML(open("https://boston.craigslist.org#{paths[i]}"))
    puts "Accessing page #{i}"
    title << item_page.css("span.postingtitletext").text
    price << item_page.css("span.price").text
    description << item_page.css("section#postingbody").text
    url << "https://boston.craigslist.org#{paths[i]}"
end

puts title
puts price
puts description
puts url

CSV.open("craiglistbikes.csv", "w") do |csv|
	puts "Writing to csv..."
	csv << title
	csv << price
	csv << url
	csv << description
	puts "Success"
end