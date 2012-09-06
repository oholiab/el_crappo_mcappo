#!/usr/bin/ruby

require 'rubygems'
require 'sinatra'
require 'haml'

set :port, 80 if ENV["APPENV"] == "production"

get '/' do
  "dicks"
end
