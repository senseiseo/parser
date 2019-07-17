require 'nokogiri'
 
require "open-uri"
 
url = 'https://www.youtube.com/channel/UC6ttD08hoT4HyY_MGxaBkGw/videos'
page = Nokogiri::HTML(open(url))
 
body_classes = page.at_css("body")[:class]

puts body_classes