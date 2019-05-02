require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

#Test your code here

zoo = Zoo.new("Jae's Animal Funhouse", "Atlanta")
animal1 = Animal.new("fluffy", 200, "big dogger", zoo)
animal2 = Animal.new("Maru", 40, "cat", zoo)
animal3 = Animal.new("Lil Bub", 50, "cat", zoo)

binding.pry
