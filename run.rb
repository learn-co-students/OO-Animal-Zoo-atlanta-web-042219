require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo= Zoo.new('Happytown', 'Atlanta')
animal_1 = Animal.new('monkey', 1000, 'Harambe', 'Happytown')
animal_2 = Animal.new('dog', 3000, 'Biggy', 'Happytown')


binding.pry
puts "done"
