require 'pry'
class Zoo

  attr_accessor :location
  attr_reader :name, :animals

  @@all = []

  def initialize(name, location)
  @name = name
  @location = location
  @animals = []
  @@all << self
  end

  def self.all
    @@all
  end

  def animal_species
    self.animals.map {|animal| animal.species}
  end

  def find_by_species(species)
    Animal.all.select { |animal| animal.species == species}
  end

  def animal_nicknames
  self.animals.map {|animal| animal.nickname}
  end

  def self.find_by_location(location)
    self.all.select { |x| x.location == location}
  end
end
