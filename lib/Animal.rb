class Animal
  attr_reader :species, :nickname, :zoo
  attr_accessor :weight

  @@all = []

  def initialize(nickname, weight, species, zoo)
    @nickname = nickname
    @weight = weight
    @species = species
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    self.all.select {|x| x.species == species}
  end
end
