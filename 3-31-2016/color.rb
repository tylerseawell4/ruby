puts "What is your fav color?"
color = gets.chomp.downcase

if color == "green" || color == "blue"
	puts "Great Choice!"
else 
	puts "Really, that is your favorite color?"
end