##require all 'TOOLSETS' (pry, ...)
require 'httparty'
require 'pry'
require 'colorize'
require 'tty-font'
require 'colorize'
require 'tty-color'
require 'pastel'
require 'tty-progressbar'
require 'tty-spinner'

#require all files
require_relative "./beer_project/version.rb"
#* require_relative all files/classes in our app
require_relative "./beer_project/cli.rb"
require_relative "./beer_project/api.rb"
require_relative "./beer_project/beer.rb"
require_relative "./beer_project/helper_methods.rb"



module BeerProject
  class Error < StandardError; end
  # Your code goes here...
end