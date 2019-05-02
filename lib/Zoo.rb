class Zoo

  attr_accessor :name, :location
  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select {|animal| animal.zoo == self}
  end

  def animal_species
    species = []
    Animal.all.each do |animal|
      species << animal.species if animal.zoo == self
    end
    species.uniq!
  end

  def find_by_species(species)
    Animal.all.select {|animal| animal.species == species}
  end

  def animal_nicknames
    nicknames = []
    Animal.all.each do |animal|
      nicknames << animal.nickname if animal.zoo == self
    end
    nicknames
  end

  def self.find_by_location(location)
    Zoo.all.select {|zoo| zoo.location == location}
  end

end
