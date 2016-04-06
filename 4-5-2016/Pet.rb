class Pet
	attr_reader :animal #getter
	attr_writer #setter
	attr_accessor :name #getter and setter

	def initialize(animal, name)
		@animal = animal
		@name = name
	end

	def sound
		if @animal == "dog"
			puts "Wuff"
		elsif @animal == "cat"
			"Meow"
		elsif @animal == "bird"
			"Squawk"
		else
			"Sound that isn't known to me"
		end
	end
end

pet = Pet.new("dog", "Zeus")
pet.name="Ringo"
puts pet.animal
puts pet.sound



