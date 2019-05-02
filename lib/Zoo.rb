class Zoo
    attr_accessor :name, :location
    attr_reader :animal

    @@zoo = []

    def initialize(name, location)
        @name = name
        @location = location
        @@zoo << self
    end

    def self.all
        @@zoo
    end

    def animals
        Animal.all.select { |animal| animal.name == self }
    end

    def animal_species
        all_species = []
        @@zoo.each do |animal|
            all_species << animal.species
        end
        all_species.unique
    end

    def find_by_species(species_arg)
        @@zoo.select { |animal| animal.species == species_arg }
    end

    def animal_nicknames(nickname_arg)
        @@zoo.select { |animal| animal.nickname == nickname_arg }
    end

    def self.find_by_location(location_arg)
        @@zoo.select { |zoos| zoo.location == location_arg }
    end

end
