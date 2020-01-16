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
        Animal.all.select { |animal| animal.zoo == self}
    end

    def animal_species
        animals.collect { |animal| animal.species}.uniq
    end

    def find_by_species(an_sp)
        animals.select { |animal| animal.species == an_sp}
    end

    def animal_nicknames
        animals.collect { |animal| animal.nickname }
    end

    def self.find_by_location(place)
        @@all.select { |zoo| zoo.location == place}
    end
end
