class Pet
	def initialize (animal)
		@animal=animal
	end

	def sound
		if @animal == "dog"
			"Wuff sound"
		elsif @animal == "cat"
			"Meow sound"
		elsif @animal == "bird"
			"Squawk sound"
		else
			"Sound that isn't known to me"
		end
	end
	def change_pet(new_pet)
		@animal = new_pet
	end
end

=begin
pet1=Pet.new("dog")
puts pet1.sound

pet2=Pet.new("cat")
puts pet2.sound

pet1.change_pet("bird")
puts pet1.sound--->
=end

puts "What kind of pet do you have?"
response=gets.chomp.downcase
puts "You have a #{response}."
noise=Pet.new(response)
puts "Your pet makes a #{noise.sound.downcase}."


