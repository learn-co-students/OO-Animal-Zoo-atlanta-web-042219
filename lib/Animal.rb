class Animal
	attr_accessor :species, :weight, :nickname, :zoo
	@@all = []

	def self.all
		@@all
	end

	def initialize(species, weight, nickname, zoo=nil)
		@species = species
		@weight = weight
		@nickname = nickname
		@zoo = zoo

		@@all << self
	end

	def self.find_by_species(species)
		@@all.select {|animal| animal.species.downcase == species.downcase}
	end
end
