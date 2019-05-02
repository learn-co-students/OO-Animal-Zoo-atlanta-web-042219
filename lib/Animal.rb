require 'pry'
class Animal

  attr_accessor :species, :weight, :nickname

  @@animals = []

  def initialize(species, weight=0, nickname)
    @species = species
    @weight = weight
    @nickname = nickname
    @@animals << self
  end

  def self.all
    @@animals
  end

  def self.find_by_species(species)
    self.all.select { |animal| animal.species == species}
    end
  end
