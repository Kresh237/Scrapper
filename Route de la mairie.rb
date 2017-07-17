#! /usr/bin/env ruby

require 'rubygems'
require 'nokogiri'
require 'open-uri'   
PAGE_URL = "http://annuaire-des-mairies.com/val-d-oise.html"


page = Nokogiri::HTML(open(PAGE_URL))

links = page.css('a.lientxt')
links.each{|link| puts link['href'] }
