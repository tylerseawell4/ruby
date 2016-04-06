animal = ['dog', 'cat', 'bird', 'snake']

# animal.each do |x|
# 	puts x
# end

puts "What is your favorite animal?"
fav = gets.chomp.downcase

animal.each do |x|

	if x == fav
		puts "I love that #{fav}"
	end
	
end



# animal.each do |x|
# 	if x == 'dog'
# 		puts 'ruff'
# 	end
# 	if x == 'cat'
# 		puts 'meow'
# 	end
# 	if x == 'bird'
# 		puts 'chirp'
# 	end
# 	if x == 'snake'
# 		puts "Im a snake"
# 	end
# end