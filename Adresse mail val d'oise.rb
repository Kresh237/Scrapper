#! /usr/bin/env ruby

require 'rubygems'
require 'nokogiri'
require 'open-uri'  

def get_all_the_urls_of_val_doise_townhalls() 
url = "http://annuaire-des-mairies.com/val-d-oise.html"
page = Nokogiri::HTML(open(url))
links = page.css('a.lientxt')
links.each{|link| puts link['href'] }
end