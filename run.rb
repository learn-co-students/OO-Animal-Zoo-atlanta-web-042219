require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

san_diego = Zoo.new("San Diego Zoo", "San Diego, Ca")
atlanta = Zoo.new("The Zoo Atlanta", "Atlanta, Ga")

nikki = Animal.new("Gibbon", 27, "Nikki", atlanta)
othello = Animal.new("Black Bear", 350, "Othello", san_diego)
courtney = Animal.new("Black Bear", 156, "Courtney", san_diego)
buddha = Animal.new("Gibbon", 24, "Buddha", atlanta)
kuzco = Animal.new("Llama", 75, "Kuzco", san_diego)

binding.pry
puts "done"
