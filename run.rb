require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


fauna = Zoo.new("Fauna Field", "Middle Earth")
critter = Zoo.new("Critter Canyon", "Narnia")

unicorn = Animal.new("Unicorn", 118, "Longhorn", fauna)
phoenix = Animal.new("Phoenix", 1086, "Firebird", critter)
phoenix2 = Animal.new("Phoenix", 1086, "Firebird", critter)

binding.pry
puts "done"
