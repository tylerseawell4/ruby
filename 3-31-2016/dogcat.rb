puts "Hello user. Can you enter Dog or Cat?"
animal = gets.chomp.downcase
if animal == "dog"
	puts "Ruff"
elsif animal == "cat"
	puts "Meow"
else
	puts "Can you enter Dog or Cat?"
end