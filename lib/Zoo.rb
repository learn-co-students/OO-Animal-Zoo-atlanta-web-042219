class Zoo
    attr_accessor :name, :location
    attr_reader :animals
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
        self.animals.map { |animal| animal.species}.uniq
    end

    def find_by_species(species)
         self.animals.select { |animal| animal.species == species }
    end

    def animal_nicknames
        self.animals.map { |animal| animal.nickname }
    end

    def self.find_by_location(location)
        self.all.select { |zoo| zoo.location == location}
    end

end
