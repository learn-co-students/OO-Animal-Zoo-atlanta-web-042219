require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Happytown", "Atlanta")
zoo2 = Zoo.new("Flavortown", "New York")

cat1 = Animal.new("Cat", 12, "booboo")
dog1 = Animal.new("Dog", 30, "bork machine")

zoo1.animals << cat1
zoo2.animals << dog1

binding.pry
puts "done"
