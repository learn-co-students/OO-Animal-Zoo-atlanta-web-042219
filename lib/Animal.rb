class Animal
    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []
    def initialize(species, weight, nickname, zoo = nil)
        @species = species
        @nickname = nickname
        @weight = weight
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select { |spc| spc.species == species }#.map {|name| name.nickname }
    end

end
