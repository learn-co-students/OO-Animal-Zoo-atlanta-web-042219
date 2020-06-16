class Animal

    attr_accessor :weight
    attr_reader :species, :nickname
    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
    end

    def zoo
        Zoo.all.find { |zoo| zoo.animals.include?(self) }
    end

    def self.find_by_species(species)
        self.all.select { |animal| animal.species == species }
    end

    def self.all
        @@all
    end


end
