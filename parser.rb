require 'nokogiri'
 
require "open-uri"
 
url = 'http://betweenscreens.fm/'
 
page = Nokogiri::HTML(open(url))
 
header = page.at_css("h2.post-title")
header_children = page.at_css("h2.post-title").children
header_parent = page.at_css("h2.post-title").parent
header_prev_sibling = page.at_css("h2.post-title").previous_sibling
 
puts "#{header}\n\n"
puts "#{header_children}\n\n"
puts "#{header_parent}\n\n"
puts "#{header_prev_sibling}\n\n"