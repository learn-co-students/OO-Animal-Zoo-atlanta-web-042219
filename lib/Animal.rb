class Animal
  attr_accessor :weight, :zoo
  attr_reader :species, :nickname
  @@all = []

  # i do not see that animals is initialized with a zoo so i added in the functionality

  def initialize(species,weight,nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end
  #works

#put zoo method in accessor because read me didnt define whether i can be changed
#animal also doesnt initialize with a zoo meaning it would be input later? so i left open to change.
#decided to initialize with a zoo in the Animal class so this could work

  def self.find_by_species(species)
  animals_with_matched_species = []
    Animal.all.each do |animal_obj|
      if animal_obj.species == species
        animals_with_matched_species << animal_obj
      end
    end
    animals_with_matched_species
  end
#works


end
