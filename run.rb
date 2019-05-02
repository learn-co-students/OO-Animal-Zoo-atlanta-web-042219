require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo_atlanta = Zoo.new("Zoo Atlanta", "Atlanta")
sd_zoo = Zoo.new("San Diego Zoo", "San Diego")
zootopia = Zoo.new("Zootopia", "The Movies")

reverend = Animal.new("dug", 50, "Beverend")
apollo = Animal.new("lion", 12, "Polly")
lemon = Animal.new("trash panda", 15, "Lem-Lem")
pip = Animal.new("floof", 8, "Pip-a-Lip")

binding.pry
puts "done"
