require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo_atlanta = Zoo.new("Zoo Atlanta", "Atlanta")
sd_zoo = Zoo.new("San Diego Zoo", "San Diego")
zootopia = Zoo.new("Zootopia", "The Movies")

reverend = Animal.new("devil dug", 50, "Beverend", zootopia)
apollo = Animal.new("sweet angel", 12, "Polly", sd_zoo)
lemon = Animal.new("chonker", 16, "Lem-Lem", zoo_atlanta)
pip = Animal.new("sweet angel", 8, "Rickety Pippet", sd_zoo)
paul = Animal.new("chonker", 15, "Pawaul", zoo_atlanta)
monte = Animal.new("devil dug", 70, "Monte Carlo", zootopia)

binding.pry
puts "done"