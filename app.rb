#!/usr/bin/ruby

require 'sinatra'
require 'haml'

def getpages
  pages = Dir.entries([File.dirname(__FILE__),"views/pages"].join("/"))
  pagenames = []
  pages.each {|x| pagenames.push(x.split(".")[0])}
  pagenames
end
  
$pages = getpages

get '/' do
  haml :default, :locals => {:foo => "dicks"}
end

get %r{/([\w]+)} do |word|
  pages = getpages
  if pages.include?(word)
    haml ["pages",word].join("/").to_sym
  else
    404
  end
end

error 404 do
  haml :'404'
end
