class Animal
    attr_accessor :species, :weight, :nickname
    attr_reader :zoo

    @@animals = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@animals << self
    end

    def self.all
        @@animals
    end

    def self.find_by_species(species)
        @@animals.select { |animal| animal.species == species }
    end

    def zoo(zoo_inst)
        Zoo.all
    end

end
