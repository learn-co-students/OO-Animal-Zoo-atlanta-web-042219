require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

my_zoo = Zoo.new("Andrew's Exotic Animal Black Market", "Atlanta")

s_tiger = Animal.new("Siberian Tiger", 450, "Fluffy", my_zoo)
sloth = Animal.new("Sloth", 80, "Han", my_zoo)
elephant = Animal.new("Elephant", 12000, "Evan", my_zoo)

monkey1 = Animal.new("Monkey", 150, "Monkey See", my_zoo)
monkey2 = Animal.new("Monkey", 220, "Monkey Do", my_zoo)


binding.pry
