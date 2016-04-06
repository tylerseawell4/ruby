puts "Can you guess what number I am thinking of between 1 and 100?"
guess = gets.chomp.to_i
if guess==50
	puts "Wow!"
elsif guess<=55 && guess>=45
	puts "So close!"
else 
	puts "Nope!"
end