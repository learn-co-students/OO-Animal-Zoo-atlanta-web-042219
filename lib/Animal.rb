class Animal
    attr_accessor :weight, :zoo
    attr_reader :species, :nickname

    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.find_by_species(an_sp)
        @@all.select { |animal| animal.species == an_sp}
    end
end
