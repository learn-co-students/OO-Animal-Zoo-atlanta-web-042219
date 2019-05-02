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
    zoos_animals = []
    Animal.all.each do |animal_obj|
      if animal_obj.zoo == self.name
        zoos_animals << animal_obj
      end
    end
  end

  def animal_species
    zoos_species = []
    Animal.all.each do |animal_obj|
      if animal_obj.zoo == self.name
        zoos_species << animal_obj.species
      end
    end
    zoos_species.uniq
  end

  def find_by_species(species)
    specific_animal_species = []
    Animal.all.each do |animal_obj|
      if animal_obj.name == animal_obj.zoo
        if animal_obj.species == species
          specific_animal_species << animal_obj
        end
      end
    end
    specific_animal_species
  end


  def animal_nicknames
    zoo_animal_nicknames = []
    Animal.all.each do |animal_obj|
      if animal_obj.zoo == self.name
        zoo_animal_nicknames << animal_obj.nickname
      end
    end
    zoo_animal_nicknames
  end

#not sure why this needs to be a class method seems like it would work without self????

  def self.find_by_location(location)
    zoos_within_location = []
    Zoo.all.each do |zoo_obj|
      if zoo_obj.location == location
        zoos_within_location << zoo_obj
      end
    end
    zoos_within_location
  end


end
