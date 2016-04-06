class Person
	attr_reader :name #have to match up with the instance variable, #same thing as def name...@name...end,
	attr_reader :age  # def age...@age...end
	attr_writer #can change the data, but cant read it
	def initialize(name, age)
		@name  = name #have to match up with @name
		@age = age
		#@name, @age = name, age
	end

	# def name #getter
	# 	@name
	# end
	# def age #getter
	# 	@age		
	end
	def birthday #setter
		@age+=1
	end
	def change_name(name) #setter
		@name=name
	end
end

my_profile= Person.new("Tyler", 24)
#puts "My name is #{my_profile.name} and I am #{my_profile.age} years old."
my_profile.birthday
puts my_profile.age
my_profile.change_name("John")
puts "My new name is #{my_profile.name}."