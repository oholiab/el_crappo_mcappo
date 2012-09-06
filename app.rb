#!/usr/bin/ruby

require 'sinatra'
require 'haml'

get '/' do
  haml :default, :locals => {:foo => "dicks"}
end
