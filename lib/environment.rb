##require all 'TOOLSETS' (pry, ...)
require 'httparty'
require 'pry'

#require all files
require_relative "./beer_project/version.rb"

require_relative "./beer_project/cli.rb"
require_relative "./beer_project/api.rb"
require_relative "./beer_project/beer.rb"



module BeerProject
  class Error < StandardError; end
  # Your code goes here...
end