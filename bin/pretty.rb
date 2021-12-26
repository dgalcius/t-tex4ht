#!/usr/bin/env ruby

require "rubygems"
require "nokogiri"
infile = ARGV[0]
#outfile = ARGV[1]

xsl = Nokogiri::XSLT(File.open("pretty_print.xsl"))
html = Nokogiri(File.open(infile))
puts xsl.apply_to(html).to_s
