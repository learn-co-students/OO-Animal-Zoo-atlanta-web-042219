class Zoo

  @@all = []

  attr_accessor :location

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select {|x|x.zoo == self}
  end

  def animal_species
    array = []
    self.animals.each {|x| array << x.species}
    return array.uniq
  end

  def find_by_species(species)
    self.animals.select {|x| x.species == species}
  end

  def animal_nicknames
    self.animals.map {|x| x.nickname }
  end

  def self.find_by_location(location)
    self.all.select {|y| y.location ==location }
  end
end
