require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

moneca = Animal.new("cat", 6, "Citlali")
gato = Animal.new("cat", 9, "Bintang")
doggy = Animal.new("dog", 10, "Laika")
choco = Animal.new("bear", 500, "Mr. Chocolate")
hippo = Animal.new("hippo", 3000, "Lu")
duck = Animal.new("duck", 3, "Quack")

cobb_land = Zoo.new("Cobbland Zoo", "Cobb Town")
nocito = Zoo.new("Nocito Zoo", "Melrose")

puts "#{cobb_land.name} is the best zoo in the #{cobb_land.location} area."

choco.zoo = "Nocito Zoo"
hippo.zoo = "Nocito Zoo"
duck.zoo = "Nocito Zoo"

moneca.zoo = "Cobbland Zoo"
gato.zoo = "Cobbland Zoo"
doggy.zoo = "Cobbland Zoo"

binding.pry

Zoo.all

cobb_land.animals

cobb_land.animal_species

cobb_land.find_by_species("cat")

cobb_land.animal_nicknames

Zoo.find_by_location("Cobbland")

moneca.nickname

gato.weight

doggy.species

Animal.all

Animal.find_by_species("cat")

puts "done"
