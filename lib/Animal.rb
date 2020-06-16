class Animal
    attr_accessor :species, :weight, :nickname, :zoo
    @@animals = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@animals << self
    end

    def self.all
        @@animals
    end

    def self.find_by_species(species)
        @@animals.select { |animal| animal.species == species }
    end

end
