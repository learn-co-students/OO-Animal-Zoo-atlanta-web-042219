require 'pry'

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
        Animal.all.select {|animal| animal.zoo == self.name}
    end

    def animal_species
        Animal.all.select {|animal| animal.zoo == self.name}.map {|animal| animal.species}.uniq
    end

    def find_by_species(species)
        Animal.all.select {|animal| animal.species == species}
    end

    def animal_nicknames
        Animal.all.select {|animal| animal.zoo == self.name}.map {|animal| animal.nickname}
    end

    def self.find_by_location(location)
        self.all.select { |loc| loc.location == location }.map {|name| name.name }
    end
end
