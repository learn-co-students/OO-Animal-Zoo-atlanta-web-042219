class Zoo
    attr_accessor :name, :location
    @@zoo = []

    def initialize(name, location)
        @name = name
        @location = location
        @@zoo << self
    end

    def self.all
        @@zoo
    end

    def animal_species
        all_species = []
        animals.each do |animal|
            all_species << animal.species
        end
        all_species.uniq
    end

    def find_by_species(species_arg)
        animals.select { |animal| animal.species == species_arg }
    end

    def animal_nicknames(nickname_arg)
        animals.select { |animal| animal.nickname == nickname_arg }
    end

    def self.find_by_location(location_arg)
        animals.select { |zoos| zoo.location == location_arg }
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

end
