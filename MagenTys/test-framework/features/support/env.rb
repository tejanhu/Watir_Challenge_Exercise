require 'watir'
require 'pry'

require_relative 'pages/app.rb'
require_relative 'pages/base_page.rb'
require_relative 'pages/home.rb'
require_relative 'pages/contact.rb'


#array storing each file in the directory
Dir["#{Dir.pwd}/features/support/pages/*.rb"].each {|f| require f}

